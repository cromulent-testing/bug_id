class Bug < ActiveRecord::Base
  attr_accessible :summary

  validates :summary, :presence => true
end
