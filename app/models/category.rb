class Category < ApplicationRecord
    before_save :category_id_validation

    def category_id_validation
        if self.category_id != 0
            padre = Category.find_by(id: self.category_id)
            if padre == nil
                raise "Padre no Encontrado"
            end
        end
    end

    def father
        if self.father?
            raise 'No tiene categoria relacionada'
        else
            padre = Category.find_by(id: self.category_id)
            if padre.nil?
                raise 'Categoria No Encontrada'
            else
                return padre.name
            end
        end
    end

    def father?
        self.category_id == 0
    end
end
