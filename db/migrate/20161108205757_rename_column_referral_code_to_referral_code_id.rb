class RenameColumnReferralCodeToReferralCodeId < ActiveRecord::Migration
  def change
  	change_column :customers, :referral_code, :integer
  	rename_column :customers, :referral_code, :referral_code_id
  end
end
