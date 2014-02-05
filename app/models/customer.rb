class Customer < ActiveRecord::Base
	has_many :transaction, through: :accounts
	has_many :accounts
	validates :first_name, presence: true
	validates :last_name, presence: true
	validates :adress
end
