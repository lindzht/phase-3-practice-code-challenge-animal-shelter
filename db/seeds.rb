puts "seeding..."

a1 = Adopter.create(first_name: "Gabriela", last_name: "Arnott")
a2 = Adopter.create(first_name: "Aaron", last_name: "David")
a3 = Adopter.create(first_name: "Lindsay", last_name: "Taylor")

s1 = Shelter.create(name: "Shelter Test", address: "123 Butt Road" )
s2 = Shelter.create(name: "Shelter Test 2", address: "4 Butts Road" )
s3 = Shelter.create(name: "Shelter Test 3", address: "9 Buttz Road" )


Pet.create(name: "Daisy", age: 3, species: "dog", adopted?: true, shelter_id: s1.id, adopter_id: a1.id)
Pet.create(name: "Catz", age: 3, species: "cat", adopted?: false, shelter_id: s2.id, adopter_id: a2.id)
Pet.create(name: "Banana", age: 3, species: "dog", adopted?: true, shelter_id: s3.id, adopter_id: a3.id)





puts "seeded baby!"