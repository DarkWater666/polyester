class Vendor < ActiveRecord::Base
  attr_accessible :text
  has_many :image
end
