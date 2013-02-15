class Author < ActiveRecord::Base
  attr_accessible :name
  has_and_beongs_to_many :books
end
