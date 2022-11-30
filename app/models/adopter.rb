class Adopter < ActiveRecord::Base
    has_many :pets
    has_many :shelters, through: :pets

    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def adopt (pet)
        if pet.adopted? == false
            pet.update(adopted?: true, adopter_id: self.id)
        end
    end

    def fav_pet
        
    end

end
