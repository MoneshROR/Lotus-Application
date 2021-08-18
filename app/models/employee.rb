class Employee < ApplicationRecord
	has_many :machines, dependent: :destroy

    validates :name, presence: { message: "must be given please" },length: { minimum: 3 }
    validates :mobile_number, presence: { message: "must be given please" },length: { in: 10..12 }, numericality: { only_integer: true }
    validates :pan_card, presence: { message: "must be given please" },length: { in: 3..10 }, numericality: { only_integer: true }
    validates :address, presence:  { message: "must be given please" }, length: {minimum: 10}
end
