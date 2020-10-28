class Public::TestsController < ApplicationController
    before_action :authenticate_customer!
    before_action :ensure_test, only: [:start, :show]

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
        select_status = @test.status
        select_genre = @test.genre
        quantity = @test.quantity

        if select_status == 'registered' && quantity == 10
        @words = Word.all.where(status: 'registered')
        
        #binding.pry
        
            if select_genre == 'ENGTAN'
                @select_words = @words.where(genre: 'ENGTAN').sample(TEST_WORDS_10)
            elsif select_genre == 'SELFTAN' 
                @select_words = @words.where(genre: 'SELFTAN').sample(TEST_WORDS_10)
            else 
                @select_words = @words
            end
        @test.update(quantity: @select_words.count)

        elsif select_status == 'registered' && quantity == 50
        @words = Word.all.where(status: 'registered')
            if select_genre == 'ENGTAN'
                @select_words = @words.where(genre: 'ENGTAN').sample(TEST_WORDS_50)
            elsif select_genre == 'SELFTAN' 
                @select_words = @words.where(genre: 'SELFTAN').sample(TEST_WORDS_50)
            else 
                @select_words = @words
            end
        @test.update(quantity: @select_words.count)

        elsif select_status == 'ongoing' && quantity == 10
        @words = Word.all.where(status: 'ongoing')
            if select_genre == 'ENGTAN'
                @select_words = @words.where(genre: 'ENGTAN').sample(TEST_WORDS_10)
            elsif select_genre == 'SELFTAN' 
                @select_words = @words.where(genre: 'SELFTAN').sample(TEST_WORDS_10)
            else 
                @select_words = @words
            end
        @test.update(quantity: @select_words.count)

        else 
        @words = Word.all.where(status: 'ongoing')
            if select_genre == 'ENGTAN'
                @select_words = @words.where(genre: 'ENGTAN').sample(TEST_WORDS_50)
            elsif select_genre == 'SELFTAN' 
                @select_words = @words.where(genre: 'SELFTAN').sample(TEST_WORDS_50)
            else 
                @select_words = @words
            end
        @test.update(quantity: @select_words.count)

        end
        
    end

    def show
        @answers = []
        request.params.each do |k, v | 
            if k.start_with?("user_input")
                @answers << {k.split("@").last => v}
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

        true_quantity = 0
        @words.each do |v|
            @word = Word.find_by(name: v[0])
            @test_word = TestWord.new
            @test_word.word_id = Word.find_by(name: v[0]).id
            @test_word.test_id = params[:id] 
            @test_word.content = v[1]
            if v[1] == v[2]
                true_quantity += 1
                @test_word.status = 'correct'
                if @word.status == 'registered'
                    @word.update(status: 'ongoing')
                else
                    @word.update(status: 'complete')
                end
            else
                @test_word.status = 'uncorrect'
            end
            @test_word.save
        end
        @true_quantity = true_quantity

        @test.customer_id = current_customer.id
        @total_quantity = @test.quantity
        @false_quantity = @total_quantity.to_i - @true_quantity.to_i
        @test.update(true_quantity: @true_quantity, false_quantity: @false_quantity)
        
    end

    private

    def test_params
        params.require(:test).permit(:customer_id, :quantity, :true_quantity, :false_quantity, :genre, :status)
    end

    def ensure_test
        @test = Test.find(params[:id])
    end
    
    TEST_WORDS_10 = 10

    TEST_WORDS_50 = 50
end