class RequestStatusSentToDistributorsController < ApplicationController

	def requestStatus(context)
		@name = "Enviado à distribuidora"
		context.name
	end
end
