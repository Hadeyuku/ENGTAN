class Public::WordsController < ApplicationController

    before_action :ensure_word, only: [:show, :edit, :update]

    def new
        @word = Word.new 
    end

    def create
        @word = Word.new(word_params)
        @word.save ? (redirect_to word_path(@word.id)) : (render :new)
        
    end

    def index
        all_words = Word.where(jenre: 'ENGTAN').or(Word.where(id: current_customer.words.pluck(:id)))
        if params[:part_of_speech]
            @words =all_words.where(part_of_speech: params[:part_of_speech]).page(params[:page]).per(20)
        elsif params[:status]
            @words =all_words.where(status: params[:status]).page(params[:page]).per(20)
        elsif params[:jenre]
            @words =all_words.where(jenre: params[:jenre]).page(params[:page]).per(20)
        else
            @words = all_words.page(params[:page]).per(20)
        end
        @all_words_count = @words.count
    end

    def show

    end

    def edit

    end

    def update
        @word.update(word_params) ? (redirect_to word_path(@word)) : (render :edit)
    end

    private

    def word_params
        params.require(:word).permit(:name, :part_of_speech, :meaning, :sentence, :memo, :image, :customer_id, :status, :jenre)
    end
    
    def ensure_word
        @word = Word.find(params[:id])
    end
end
