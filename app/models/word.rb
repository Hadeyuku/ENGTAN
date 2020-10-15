class Word < ApplicationRecord
    attachment :image
    
    belongs_to :customer
    has_many :test_words
    has_many :favorites
    belongs_to :admin, optional: true


    enum part_of_speech: { noun: 0, verb: 1, adjective: 2, adverb: 3, preposition: 4, conjunction: 5, pronoun: 6, interjection: 7 }
    enum status: { registered: 0, ongoing: 1, complete: 2 }
    enum jenre: { SELFTAN: 0, ENGTAN: 1 }

    def favorited_by?(customer)
        favorites.where(customer_id: customer.id).exists?
    end

end
