class TestWord < ApplicationRecord
    belongs_to :word
    belongs_to :test, optional: true

    enum status: { correct: 0, uncorrect: 1}

end
