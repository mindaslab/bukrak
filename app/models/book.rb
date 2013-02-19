class Book < ActiveRecord::Base
  attr_accessible :description, :title
  has_and_belongs_to_many :authors
  has_many :chapters, dependent: :destroy
  
  validates :description, :title, presence: true
end
