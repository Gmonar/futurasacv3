class District < ActiveRecord::Base
  has_many :origin_rate, :class_name => "Rate", :foreign_key => "district_start"
  has_many :destiny_reate, :class_name => "Rate", :foreign_key => "district_end"  
  belongs_to :user
end
