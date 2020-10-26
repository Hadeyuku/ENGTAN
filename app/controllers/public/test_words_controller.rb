class Public::TestWordsController < ApplicationController
    before_action :authenticate_customer!
    def index
        @test = Test.find(params[:test_id])
        @test_words = @test.test_words
        complete_amount = 0
        if @test_words.where(status: 'correct').present?
            @words = Word.where(name: params[:name])
            complete_amount = @words.where(status: 'complete').count
        end
        @complete_amount = complete_amount

        @customer = current_customer
        if @customer.words.where(status: 'complete').count > 1000
            @customer.update(status: 'intermidiate')
        elsif @customer.words.where(status: 'complete').count > 2000
            @customer.update(status: 'advanced')
        end
        
    end
    
end