class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :districts
  has_many :orders

  def user_reser
    name + ' ' + lastname
  end

  def passenger?
    self.role == 'passenger'    
  end
  
  def driver?
    self.role == 'driver'
  end
  
  def user?
    self.role == 'user'    
  end
  
  def administrator?
    self.role == 'administrator'
  end
end
