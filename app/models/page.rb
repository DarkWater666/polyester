class Page < ActiveRecord::Base
  validates :mail, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create }, :presence => true
  validates :name, :presence => true
  validates :message, :presence => true
end
