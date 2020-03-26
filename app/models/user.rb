class User < ApplicationRecord
    has_secure_password
    validates :name, uniqueness: true
    validates :name, :password, presence: true
    has_many :posts, dependent: :delete_all
    has_many :comments, dependent: :delete_all
end
