class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :weight
      t.integer :phone
      t.string :kin
      t.string :drug_admin
    end
  end
end
