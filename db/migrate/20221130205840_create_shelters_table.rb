class CreateSheltersTable < ActiveRecord::Migration[5.2]
  def change

    create_table :shelters do |t|
      t.string :name
      t.string :address
    end

  end
end
