class Product < ApplicationRecord
    has_many :productvariations
    has_many :product_categories
    has_many :orderitems
end
