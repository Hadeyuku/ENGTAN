class Word < ApplicationRecord
    attachment :image
    
    belongs_to :customer
    has_many :test_words

    enum part_of_speech: { 名詞: 0, 動詞: 1, 形容詞: 2, 副詞: 3, 前置詞: 4, 接続詞: 5, 代名詞: 6, 間投詞: 7 }
    enum status: { 新規: 0, 暗記中: 1, 完了: 2 }
    enum jenre: { SELFTAN: 0, ENGTAN: 1 }
end
