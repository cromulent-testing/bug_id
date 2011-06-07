class Bug < ActiveRecord::Base
  attr_accessible :summary, :status_id

  validates :summary, :presence => true

  belongs_to :status
  validates_associated :status
end
