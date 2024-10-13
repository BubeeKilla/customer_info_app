class CreateCustomers < ActiveRecord::Migration[7.2]
  def change
    create_table :customers do |t|
      t.string :last_name
      t.string :first_name
      t.date :birth_date
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
