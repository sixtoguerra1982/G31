class Category < ApplicationRecord
    before_save :category_id_validation
    def category_id_validation
        false
    end
end
