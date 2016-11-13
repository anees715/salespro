class DashboardController < ApplicationController
	before_action :authenticate_user!
	layout "dashboard"
	def index
	end

	def check_referral_code
	if ReferralCode.exists?(:referral_code => params[:coupon])
      valid = true
      @coupon = Coupon.find_by(:code => params[:coupon])
      puts "Code Valid"
    else
      valid = false
      puts "Code Invalid"
    end
    respond_to do |format|
      if valid
        format.json { render :json => @coupon }
      else
        format.json { }
      end
      return
    end

	end
end
