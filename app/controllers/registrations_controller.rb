class RegistrationsController < Devise::RegistrationsController

  def new
	    @secret_codes  = SecretCode.where('id NOT IN (SELECT DISTINCT(secret_code_id) FROM users where secret_code_id IS NOT NULL)')
	  	build_resource({})
	    respond_with self.resource
  end

  def create
  		super
  end



   def sign_up_params
    params.require(:user).permit(:email, :password, :password_confirmation, :secret_code_id)
  end

  
end