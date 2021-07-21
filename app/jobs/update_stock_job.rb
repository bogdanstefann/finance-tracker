class UpdateStockJob < ApplicationJob
	queue_as :default


	def perform(*stocks)
		stocks.first.each do |stock|
			stock.update_price
		end
	end

end