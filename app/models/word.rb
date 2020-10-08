class Word < ApplicationRecord
    attachment :image
    
    belongs_to :customer
    has_many :test_words

    enum status: { 新規: 0, 暗記中: 1, 完了: 2 }
    enum jenre: { SELFTAN: 0, ENGTAN: 1 }
end
