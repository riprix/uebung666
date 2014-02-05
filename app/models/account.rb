class Account < ActiveRecord::Base
	has_many :transactions
	belongs_to :customer
	validates :number, :balance, presence: true
	validates :balance, numericality: {greater_than_or_equal_to: 0}
	validates :number, uniqueness: true
end
