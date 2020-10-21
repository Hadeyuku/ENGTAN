class Public::CustomersController < ApplicationController
    def show
        @engtan_words = Word.where(genre: 'ENGTAN')
        @selftan_words = current_customer.words.where(genre: 'SELFTAN')
        @total_words = current_customer.words
        @words = current_customer.words.order("RANDOM()").limit(4)
    end
end
