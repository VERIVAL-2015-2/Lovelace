class RequestStatusAwaitingPaymentsController < ApplicationController

	def requestStatus(context)
		@name = "Aguardando Pagamento"
		context.name
	end
end
