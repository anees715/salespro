class CreateReferralCodes < ActiveRecord::Migration
  def change
    create_table :referral_codes do |t|
    	t.string :referral_code
    	t.integer :user_id
    	t.integer :number_of_referrals

      t.timestamps null: false
    end
  end
end
