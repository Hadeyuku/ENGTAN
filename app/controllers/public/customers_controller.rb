class Public::CustomersController < ApplicationController
    before_action :authenticate_customer!
    before_action :ensure_customer
    before_action :check_guest, only: :update

    def show
        @engtan_words = Word.where(genre: 'ENGTAN')
        @selftan_words = @customer.words.where(genre: 'SELFTAN')
        @total_words = @customer.words
        @words = @engtan_words.order("RANDOM()").limit(4)
    end

    def edit
    end

    def update
        @customer.update(customer_params) ? (redirect_to mypage_path(@customer)) : (render :edit)
    end

    private

    def customer_params
        params.require(:customer).permit(:family_name, :first_name, :email, :status)
    end

    def ensure_customer
        @customer = current_customer
    end
end
