class Customer < ApplicationRecord
	has_many :machines, dependent: :destroy	
	validates :name, presence:  { message: "must be given please" },length: { minimum: 3 }
	validates :email,format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create } ,presence:  { message: " must be given please" },length: { minimum: 6 }
	validates :primary_number, presence:  { message: "must be given please" },length: { in: 10..12 }, numericality: { only_integer: true }
	validates :alternate_number, presence:  { message: "must be given please" },length: { in: 10..12 }, numericality: { only_integer: true }
	validates :address, presence:  { message: "must be given please" }, length: {minimum: 10}
end
