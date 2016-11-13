class ChangeColumnTypesUserProfile < ActiveRecord::Migration
  def change
  	rename_column :user_profiles, :business_category, :business_category_id
  end
end
