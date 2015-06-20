class RequestController < ApplicationController
	private 

	def initialize(nameStatus)
		@nameStatus = "Aguardando Pagamento"
	end

	def getStatus 
		@nameStatus = RequestStatus.requestStatus(self)
	end


end
