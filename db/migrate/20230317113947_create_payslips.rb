class CreatePayslips < ActiveRecord::Migration[7.0]
  def change
    create_table :payslips do |t|
      t.bigint :amount 
      t.string :name
      t.date :credit
      t.references :user
      t.bigint :total
      t.integer :leaves

      t.timestamps
    end
  end
end
