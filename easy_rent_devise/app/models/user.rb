class User < ActiveRecord::Base
  
  has_many :maintenance_requests, dependent: :destroy
  has_many :rent_payments, dependent: :destroy
  has_many :rent_notifications, dependent: :destroy
  has_one :notification_settings, dependent: :destroy
  
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable, :lockable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :rentDueDay
end
