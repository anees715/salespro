class User < ActiveRecord::Base

  has_one :user_profile
  has_many :customers
  accepts_nested_attributes_for :user_profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
