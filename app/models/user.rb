class User < ApplicationRecord
    has_many :blogs

    #validations pour les caractéristiques des colonnes des formulaires inscription et de connexion
    validates :name, presence: true, length: {maximum: 30}
    validates :email, presence: true, length: {maximum: 255}, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}

    before_validation {email.downcase!}
    has_secure_password
    validates :password, presence: true, length: {minimum: 6}
end
