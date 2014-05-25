class Listtarea < ActiveRecord::Base
	belongs_to :proyecto

	has_many :tareas

	validates :proyecto_id, presence:true
	validates :lista, presence:true
end
