class Public::TestWordsController < ApplicationController
    def index
        @test = Test.find(params[:test_id])
        @test_words = @test.test_words
        complete_amount = 0
        if @test_words.where(status: 'correct').present?
            @words = Word.where(name: params[:name])
            complete_amount = @words.where(status: 'complete').count
        end
        @complete_amount = complete_amount
        
    end
    
end