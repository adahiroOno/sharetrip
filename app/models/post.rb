class Post < ApplicationRecord
  has_one :plan_detail
  accepts_nested_attributes_for :plan_detail
  belongs_to :user

  validates :trip_title,
    length: { maximum: 30},
    presence: true  
  validates :content,
    length: {maximum: 150},
    presence: true
end
