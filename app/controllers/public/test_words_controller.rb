class Public::TestWordsController < ApplicationController
    def new
        @test_word = Test_word.new
    end
    
end
