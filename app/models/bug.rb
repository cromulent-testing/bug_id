class Bug < ActiveRecord::Base
  attr_accessible :description, :status
  STATUS = ['Open', 'Closed']

  validates :description, :presence => true

  validates :status, :presence => true
  validates_inclusion_of :status, :in => STATUS
end
