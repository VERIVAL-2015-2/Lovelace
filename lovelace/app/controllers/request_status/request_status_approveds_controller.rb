class RequestStatusApprovedsController < ApplicationController
	
	def requestStatus(context)
		@name = "Pedido Aprovado"
		context.name
	end

end
