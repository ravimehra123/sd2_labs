class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :secret_code, presence: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :secret_code  
   
	Roles = [ :admin , :default ]

  def is?( requested_role )
    self.role == requested_role.to_s
  end
   
end
