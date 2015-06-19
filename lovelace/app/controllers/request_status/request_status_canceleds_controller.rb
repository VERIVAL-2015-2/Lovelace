class RequestStatusCanceledsController < ApplicationController

	def requestStatus(context)
		@name = "Cancelado"
		context.name
	end
end
