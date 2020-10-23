class Admins::HomesController < ApplicationController
    before_action :authenticate_admin!

    def top
        @customers = Customer.all.count
        @words = Word.all.count
        @engtan = Word.where(genre: 'ENGTAN').count
        @selftan = Word.where(genre: 'SELFTAN').count
    end
end
