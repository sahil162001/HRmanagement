class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name 
      t.date :dob 
      t.string :gender 
      t.string :role 
      t.string :phone
      t.references :user, index: { unique: true },foreign_key: true
      t.string :address
      t.string :skill
      t.timestamps
    end
  end
end
