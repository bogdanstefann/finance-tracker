class WelcomeController < ApplicationController
	def index
		UpdateStockJob.perform_later
	end
end