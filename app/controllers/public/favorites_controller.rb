class Public::FavoritesController < ApplicationController

    def create
        word = Word.find(params[:word_id])
        favorite = current_customer.favorites.new(word_id: word.id)
        favorite.save
        redirect_to words_path
    end
  
    def destroy
        word = Word.find(params[:word_id])
        favorite = current_customer.favorites.find_by(word_id: word.id)
        favorite.destroy
        redirect_to words_path(word)
    end
end
