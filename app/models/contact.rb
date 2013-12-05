class Contact < ActiveRecord::Base
  attr_accessible :text
  has_many :image
end
