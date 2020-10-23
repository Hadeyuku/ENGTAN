class Admins::HomesController < ApplicationController
    before_action :authenticate_admin!

    def top
        @customers = Customer.all.count
        @words = Word.all.count
        @engtan = @words.where(genre: 'ENGTAN').count
        @selftan = @_words.where(genre: 'SELFTAN').count
    end
end
