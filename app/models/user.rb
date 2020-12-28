class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :member

  validates :email,  presence: true
  validates :password,  presence: true
  validates :last_name,  presence: true
  validates :first_name,  presence: true
  validates :last_name_kana,  presence: true
  validates :first_name_kana,  presence: true
  validates :member_id,  numericality: { other_than: 0, message: 'Select'  }
  validates :members_number,  numericality: { with: /\A[0-9]+\z/, message: 'Half-width number' }
end
