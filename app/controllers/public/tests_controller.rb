class Public::TestsController < ApplicationController

    def new
        @test = Test.new
    end

    def create
        @test = current_customer.tests.new(test_params)

        if params[:select_status] == '0' && params[:quantity] == '10'
        @words = Word.where(status: 'registered').order("RANDOM()").limit(10)
            if params[:select_jenre] == 'ENGTAN'
                @words = words.where(jenre: 'ENGTAN')
            elsif params[:select_jenre] == 'SELFTAN' 
                @words = words.where(jenre: 'SELTAN')
            else 
                @words
            end
        
        elsif params[:select_status] == '0' && params[:quantity] == '50'
        @words = Word.where(status: 'registered').order("RANDOM()").limit(50)
            if params[:select_jenre] == 'ENGTAN'
                @words = words.where(jenre: 'ENGTAN')
            elsif params[:select_jenre] == 'SELFTAN' 
                @words = words.where(jenre: 'SELTAN')
            else 
                @words
            end
        
        elsif params[:select_status] == '1' && params[:quantity] == '10'
        @words = Word.where(status: 'ongoing').order("RANDOM()").limit(10)
            if params[:select_jenre] == 'ENGTAN'
                @words = words.where(jenre: 'ENGTAN')
            elsif params[:select_jenre] == 'SELFTAN' 
                @words = words.where(jenre: 'SELTAN')
            else 
                @words
            end
        
        else 
        @words = Word.where(status: 'ongoing').order("RANDOM()").limit(50)
            if params[:select_jenre] == 'ENGTAN'
                @words = words.where(jenre: 'ENGTAN')
            elsif params[:select_jenre] == 'SELFTAN' 
                @words = words.where(jenre: 'SELTAN')
            else 
                @words
            end
        end

        @test.save

    end
    
    private

    def test_params
    params.require(:test).permit(:customer_id, :quantity)
    end
    
end