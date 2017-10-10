class Controller < ApplicationController

require 'csv'    
	def index
	csv_text = File.read('params[:file]')
	csv = CSV.parse(csv_text, :headers => true)
	csv.each do |row|
  	Moulding.create!(row.to_hash)
	end
end
end
