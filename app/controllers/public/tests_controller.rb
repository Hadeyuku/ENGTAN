class Public::TestsController < ApplicationController

    def new
        @test = Test.new
    end
    
end
