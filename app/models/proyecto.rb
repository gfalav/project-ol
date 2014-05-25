class Proyecto < ActiveRecord::Base
	belongs_to :empresa

	has_many :listtareas
	has_many :hitos

	validates :empresa_id, presence:true
	validates :nombre, presence:true

end
