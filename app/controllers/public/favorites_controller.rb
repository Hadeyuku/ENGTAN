class Public::FavoritesController < ApplicationController

    def create
        @word = Word.find(params[:word_id])
        favorite = current_customer.favorites.new(word_id: params[:word_id])
        favorite.save
    end
  
    def destroy
        @word = Word.find(params[:word_id])
        favorite = Favorite.find_by(word_id: params[:word_id], customer_id: current_customer.id)
        favorite.destroy
    end
end
