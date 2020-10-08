class Public::WordsController < ApplicationController

    before_action :ensure_word, only: [:show, :edit, :update]

    def new
       @word = Word.new 
    end

    def create
        @word = Word.new(word_params)
        #binding.pry
        @word.save ? (redirect_to word_path(@word.id)) : (render :new)
        
    end

    def show

    end

    def edit

    end

    private

    def word_params
      params.require(:word).permit(:name, :part_of_speech, :meaning, :sentence, :memo, :image, :customer_id)
    end
    
    def ensure_word
        @word = Word.find(params[:id])
    end
end
