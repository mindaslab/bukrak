class Chapter < ActiveRecord::Base
  belongs_to :book
  attr_accessible :content, :title, :order, :book_id
  
  validates :content, :title, :order, presence: true
  validates :order, numericality: true
  validate :order_cant_be_less_than_one
  
  private
  def order_cant_be_less_than_one
    errors.add :order, " can't be less than one" if order < 1
  end
end
