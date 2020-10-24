class Admins::CustomersController < ApplicationController
    before_action :authenticate_admin!
    before_action :ensure_customer, only: [:show, :edit, :update, :destroy]

    def index
        @customers = Customer.all.page(params[:page])
        @customers_count = @customers.count
    end

    def show
    end

    def edit
    end

    def update
        @customer.update(customer_params) ? (redirect_to admins_customer_path(@customer)) : (render :edit)
    end

    def destroy
        @customer.destroy
        redirect_to admins_customers_path
    end

    def search
        @content = params['search']['content']
        @result = search_for(@content)
        @all_customers_count = @result.count
    end

    private

    def customer_params
        params.require(:customer).permit(:family_name, :first_name, :status)
    end

    def ensure_customer
        @customer = Customer.find(params[:id])
    end

    def search_for(content)
        Customer.where(name: content)
    end

end
