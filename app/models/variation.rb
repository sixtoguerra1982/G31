class Variation < ApplicationRecord
    enum size: [:S, :M, :L, :XL]
    enum color: ["Red", "Blue", "White"]
    has_many :productvariation
end
