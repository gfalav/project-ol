class Empresa < ActiveRecord::Base
	validates :nombre, presence: true, uniqueness: true

	has_many :users
end
