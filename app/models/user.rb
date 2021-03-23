class User < ApplicationRecord
  has_and_belongs_to_many(:items)
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  validates :email, :presence => true, :uniqueness => true
  validates :username, :presence => true, uniqueness: { case_sensitive: false }

end
