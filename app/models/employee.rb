class Employee < ApplicationRecord
	has_many :machines, dependent: :destroy
	#has_many :customers, through: :machines

    validates :name, presence: true
    validates :mobile_number, presence: true, length: {maximum: 10}
    validates :pan_card, presence: true
    validates :address, presence: true, length: { minimum: 5 }	
end
