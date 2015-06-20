class RequestStatusDeliveredsController < ApplicationController

	def requestStatus(context)
		@name = "Entregue"
		context.name
	end
end
