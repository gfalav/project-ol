class Tarea < ActiveRecord::Base
	belongs_to :listtarea

	validates :listtarea_id, presence:true
	validates :nombre, presence:true
end
