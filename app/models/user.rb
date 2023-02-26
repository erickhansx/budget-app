class User < ApplicationRecord
  has_many :entities, dependent: :destroy
  has_many :groups, dependent: :destroy

  validates :username, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: { case_sensitive: false }
  validates :email, presence: true, length: { minimum: 3, maximum: 150 }, uniqueness: { case_sensitive: false }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
