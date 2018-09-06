class SecretCodeController < ApplicationController
	load_and_authorize_resource
	def generate_secret_code
		if params[:code_value] && params[:code_value].to_i > 1
			(1..params[:code_value].to_i).each do 
				@secret_code = SecretCode.create(code: SecureRandom.uuid)
			end
		else
			@secret_code = SecretCode.create(code: SecureRandom.uuid)
		end
		flash[:success] = "Secret Codes added successfully"
	    redirect_to root_path		
	end
end