class Public::WordsController < ApplicationController

    before_action :ensure_word, only: [:show, :edit, :update, :destroy]

    def new
        @word = Word.new 
    end

    def create
        @word = Word.new(word_params)
        @word.save ? (redirect_to word_path(@word.id)) : (render :new)
        
    end

    def index
        all_words = Word.where(genre: 'ENGTAN').or(Word.where(id: current_customer.words.pluck(:id)))
        if params[:part_of_speech]
            @words =all_words.where(part_of_speech: params[:part_of_speech]).page(params[:page]).per(20)
        elsif params[:status]
            @words =all_words.where(status: params[:status]).page(params[:page]).per(20)
        elsif params[:genre]
            @words =all_words.where(genre: params[:genre]).page(params[:page]).per(20)
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

    def destroy
        @word.destroy
        redirect_to words_path
    end

    def search
        @model = params['search']['model']
        @content = params['search']['content']
        @result = search_for(@model, @content)
        @all_words_count = @result.count
    end

    private

    def word_params
        params.require(:word).permit(:name, :part_of_speech, :meaning, :sentence, :memo, :image, :customer_id, :status, :genre)
    end
    
    def ensure_word
        @word = Word.find(params[:id])
    end

    def search_for(model, content)
        if model == 'name'
            Word.where(name: content)
        elsif model == 'meaning'
            Word.where(name: content)
        else
            [] 
        end
    end
end
