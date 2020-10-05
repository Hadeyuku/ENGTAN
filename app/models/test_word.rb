class TestWord < ApplicationRecord
    belongs_to :word
    belongs_to :customer
    belongs_to :test

    enum status: { 正解: 0, 不正解: 1}
end
