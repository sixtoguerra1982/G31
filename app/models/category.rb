class Category < ApplicationRecord
    before_save :category_id_validation

    def category_id_validation
        if self.category_id != 0
            padre = Category.find_by(id: self.category_id)
            if padre == nil
                raise "Padre no Encontrado"
            else
                if padre.category_id != 0
                    raise "Padre a asignar, no corresponde a Padre"
                end
            end
        end
    end

    def father?
        self.category_id == 0
    end
end
