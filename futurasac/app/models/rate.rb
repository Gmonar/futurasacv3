class Rate < ActiveRecord::Base
  belongs_to :origin, :class_name => "District"
  belongs_to :destiny, :class_name => "District"
    
  #has_many :orders
    
  def description=(district)
    self.origin = district
  end   
end
