class Word < ApplicationRecord
    belongs_to :customer
    has_many :test_words

    enum status: { 新規: 0, 暗記中: 1, 完了: 2 }
end
