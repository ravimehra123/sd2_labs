class WelcomeController < ApplicationController

	def index
		@secret_codes = SecretCode.includes(:user).all
	end
end