class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
    	t.string :name
    	t.string :email
    	t.date :date_of_birth
    	t.integer :source_id
    	t.string :referral_code
    	t.integer :gender_id
    	t.integer :user_id

      t.timestamps null: false
    end
  end
end
