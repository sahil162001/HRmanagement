class CreateLeaves < ActiveRecord::Migration[7.0]
  def change
    create_table :leaves do |t|
      t.integer :number
      t.references :user
      t.date :start_at 
      t.date :end_at
      t.string :email 
      t.string :session
      t.string :reason
      t.integer :total



      t.timestamps
    end
  end
end
