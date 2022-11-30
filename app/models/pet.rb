require "pry"
class Pet < ActiveRecord::Base

    belongs_to :shelter 
    belongs_to :adopter

    def self.oldest 
        self.order(age: :desc).first
    end

    def self.average_age
        self.sum(:age) / self.all.length
    end

    def in_dog_years
        if self[:species] == "dog"
            self.age * 5
        end
    end

    def fav_pet
        
        pets = self.pets.map do |pet|
            pet.species
        end
        
        pets.max_by do |p|
            pets.count(p)
        end

    end

    # binding.pry

end
