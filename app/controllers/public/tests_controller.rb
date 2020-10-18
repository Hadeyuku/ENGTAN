class Public::TestsController < ApplicationController

    def new
        @test = Test.new
    end

    def start
        @test = Test.find(params[:id])
        select_status = @test.status
        select_genre = @test.genre
        quantity = @test.quantity
        #binding.pry
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
    
    private

    def test_params
    params.require(:test).permit(:customer_id, :quantity, :true_quantity, :false_quantity, :genre, :status)
    end
    
end