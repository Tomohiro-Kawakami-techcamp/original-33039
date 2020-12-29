class Staff < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #devise :database_authenticatable, :registerable,
  #       :recoverable, :rememberable, :validatable
         has_many :items
  
         validates :email,  presence: true
         validates :password,  presence: true
         validates :last_name,  presence: true
         validates :first_name,  presence: true
         validates :position,  presence: true
end
