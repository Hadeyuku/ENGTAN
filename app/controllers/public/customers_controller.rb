class Public::CustomersController < ApplicationController
    before_action :authenticate_customer!
    before_action :check_guest, only: [:create, :destroy]

    def show
        @engtan_words = Word.where(genre: 'ENGTAN')
        @selftan_words = current_customer.words.where(genre: 'SELFTAN')
        @total_words = current_customer.words
        @words = current_customer.words.order("RANDOM()").limit(4)
    end
end
