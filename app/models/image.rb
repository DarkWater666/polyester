class Image < ActiveRecord::Base
  belongs_to :about
  belongs_to :contact
  belongs_to :vendor
end
