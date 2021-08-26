class Machine < ApplicationRecord
  belongs_to :customer
  belongs_to :employee
  enum status: [:active, :inactive], _default: :"active"

end
