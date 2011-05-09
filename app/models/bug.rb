class Bug < ActiveRecord::Base
  attr_accessible :summary, :title

  validates :summary, :presence => true
  validates :title, :presence => true
end
