class Bug < ActiveRecord::Base
  attr_accessible :summary, :title

  validates :summary, :presence => true
  validates :title, :presence => true

  def to_s
    "title: #{title}, summary: #{summary}"
  end
end
