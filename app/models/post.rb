class Post < ApplicationRecord
    has_one :plan_detail
    accepts_nested_attributes_for :plan_detail
    belongs_to :user
end
