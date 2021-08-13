class Customer < ApplicationRecord
	has_many :machines, dependent: :destroy
	#has_many :employees, through: :machines
	
	validates :name, presence: true
	validates :email, presence: true
	validates :primary_number, presence: true
	validates :alternate_number, presence: true
	validates :address, presence: true, length: {minimum: 5}
end
