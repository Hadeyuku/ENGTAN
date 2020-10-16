class Public::TestsController < ApplicationController

    def new
        @test = Test.new
    end

    def start
        @test = Test.new(test_params)
        if params[:select_status] == '0' && params[:quantity] == '10'
        @words = Word.where(status: 'registered').order("RANDOM()").limit(10)
            if params[:select_jenre] == 'ENGTAN'
                @select_words = @words.where(jenre: 'ENGTAN')
            elsif params[:select_jenre] == 'SELFTAN' 
                @select_words = @words.where(jenre: 'SELFTAN')
            else 
                @words
            end
            
        elsif params[:select_status] == '0' && params[:quantity] == '50'
        @words = Word.where(status: 'registered').order("RANDOM()").limit(50)
            if params[:select_jenre] == 'ENGTAN'
                @select_words = @words.where(jenre: 'ENGTAN')
            elsif params[:select_jenre] == 'SELFTAN' 
                @select_words = @words.where(jenre: 'SELFTAN')
            else 
                @words
            end
        
        elsif params[:select_status] == '1' && params[:quantity] == '10'
        @words = Word.where(status: 'ongoing').order("RANDOM()").limit(10)
            if params[:select_jenre] == 'ENGTAN'
                @select_words = @words.where(jenre: 'ENGTAN')
            elsif params[:select_jenre] == 'SELFTAN' 
                @select_words = @words.where(jenre: 'SELFTAN')
            else 
                @words
            end
        
        else 
        @words = Word.where(status: 'ongoing').order("RANDOM()").limit(50)
            if params[:select_jenre] == 'ENGTAN'
                @select_words = @words.where(jenre: 'ENGTAN')
            elsif params[:select_jenre] == 'SELFTAN' 
                @select_words = @words.where(jenre: 'SELFTAN')
            else 
                @words
            end
        end
        
    end

    def create
        @test = Test.new(test_params)
        #binding.pry
        if @test.save
            redirect_to start_test_path(@test.id)
        else
            render :new
        end

    end
    
    private

    def test_params
    params.require(:test).permit(:customer_id, :quantity, :true_quantity, :false_quantity)
    end
    
end