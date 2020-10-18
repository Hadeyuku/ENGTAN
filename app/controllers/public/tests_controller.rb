class Public::TestsController < ApplicationController

    def new
        @test = Test.new
    end

    def create
        @test = Test.new(test_params)
        @test.customer_id = current_customer.id
        
        if @test.save
            redirect_to start_test_path(@test.id)
        else
            render :new
        end

    end

    def start
        @test = Test.find(params[:id])
        select_status = @test.status
        select_genre = @test.genre
        quantity = @test.quantity

        if select_status == 'registered' && quantity == 10
        @words = Word.all.where(status: 'registered').order("RANDOM()").limit(10)
            if select_genre == 'ENGTAN'
                @select_words = @words.where(genre: 'ENGTAN')
            elsif select_genre == 'SELFTAN' 
                @select_words = @words.where(genre: 'SELFTAN')
            else 
                @select_words = @words
            end
        
        elsif select_status == 'registered' && quantity == 50
        @words = Word.all.where(status: 'registered').order("RANDOM()").limit(50)
            if select_genre == 'ENGTAN'
                @select_words = @words.where(genre: 'ENGTAN')
            elsif select_genre == 'SELFTAN' 
                @select_words = @words.where(genre: 'SELFTAN')
            else 
                @select_words = @words
            end
        
        elsif select_status == 'ongoing' && quantity == 10
        @words = Word.all.where(status: 'ongoing').order("RANDOM()").limit(10)
            if select_genre == 'ENGTAN'
                @select_words = @words.where(genre: 'ENGTAN')
            elsif select_genre == 'SELFTAN' 
                @select_words = @words.where(genre: 'SELFTAN')
            else 
                @select_words = @words
            end
        
        else 
        @words = Word.all.where(status: 'ongoing').order("RANDOM()").limit(50)
            if select_genre == 'ENGTAN'
                @select_words = @words.where(genre: 'ENGTAN')
            elsif select_genre == 'SELFTAN' 
                @select_words = @words.where(genre: 'SELFTAN')
            else 
                @select_words = @words
            end
        end

    end

    def answer
        
        redirect_to answer_test_path
        
    end

    def show
        @answers = []
        request.params.each do |k, v | 
            if k.start_with?("user_input")
                @answers << {k.split("@").last => v}
                #  @select_words << k.split("@").last
                # @ansewers << v
            end
        end
        @answer_words = Word.where(name: @answers.map(&:keys).flatten)
        @words = []
        @answer_words.each do |v|
            @answers.each do |k|
                if v.name == k.keys[0]
                    @words << [v.name, k.values[0], v.meaning]
                end
            end
            
        end
        
        #redirect_to answer_test_path
    end
    
    private

    def test_params
        params.require(:test).permit(:customer_id, :quantity, :true_quantity, :false_quantity, :genre, :status, test_words_attributes: [:customer_id, :content])
    end
    
end

#ActionController::Parameters {"utf8"=>"✓", "user_input@book"=>"本", "user_input@laptop"=>"ノートパソコン", "user_input@study"=>"", "user_input@political"=>"", "user_input@phone"=>"", "user_input@sciencse"=>"", "user_input@register"=>"", "user_input@english"=>"", "user_input@train"=>"", "user_input@baseball"=>"", "commit"=>"Show an answer", "controller"=>"public/tests", "action"=>"show", "id"=>"47"} permitted: false>