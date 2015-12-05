class Order < ActiveRecord::Base
  belongs_to :user
  belongs_to :rate
  belongs_to :vehicle
  
  def origin_district
    @origin
  end
  
  def origin_district=(district)
    self.origin = district
  end
  
  def destiny_district
    @destiny
  end
  
  def destiny_district=(district)
    self.destiny = district
  end
  
end
