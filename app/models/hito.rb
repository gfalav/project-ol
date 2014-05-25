class Hito < ActiveRecord::Base
	belongs_to :proyecto

	validates :proyecto_id, presence:true
	validates :nombre, presence:true

end
