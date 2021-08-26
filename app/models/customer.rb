class Customer < ApplicationRecord
	has_many :machines, dependent: :destroy	
	validates :name, presence:  { message: "must be given please" },length: { minimum: 3 }
	validates :email,format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create } ,presence:  { message: " must be given please" },length: { minimum: 6 }
	validates :primary_number, presence:  { message: "must be given please" },length: { in: 10..12 }, numericality: { only_integer: true }
	validates :alternate_number, presence:  { message: "must be given please" },length: { in: 10..12 }, numericality: { only_integer: true }
	validates :address, presence:  { message: "must be given please" }, length: {minimum: 10}
	# scope :cust, -> { where(name: "raghu") }
	# scope :cust1, -> { offset(5).limit(10) }
	# scope :cust2, -> { last(5) }
	#........Passing argument in scope ................

	#scope :cust, ->(name) { where("name = ?", name) }
    # condition in scope ......................

    scope :cust, -> { order('id ASC').reorder('name')}
    #Previous working search bar
    #scope :search, -> { where("name LIKE ?","%" +params[:q]+"%") }

  # 	scope :searched, -> (name) {where("name LIKE ?", name)}
		# def searched(name)
  # 		where("name LIKE ?", name)
		# end
########################## Add Search using scope ############## 
	def self.search(search)
		if search
			where(["name LIKE ?","%#{search}%"])
		else
			all
		end
	end
	# scope :created_before, ->(time) { where("created_at < ?", time) if time.present? }
	#default_scope { where(name: false) }

	#################Add Enum in Rails ####################
  enum status: [:open, :closed,:under_review, :pending] 
end
