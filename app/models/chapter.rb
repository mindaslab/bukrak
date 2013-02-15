class Chapter < ActiveRecord::Base
  belongs_to :book
  attr_accessible :content, :title
end
