class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :phone_number
    	t.string :business_name
    	t.integer :business_category
    	t.string :website
    	t.string :address
    	t.string :office_number
    	t.integer :user_id

      t.timestamps null: false
    end
  end
end
