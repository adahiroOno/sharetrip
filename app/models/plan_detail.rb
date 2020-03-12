class PlanDetail < ApplicationRecord
    belongs_to :post
    validates :start_date,
    presence: true  
    validates :close_date,
    presence: true
end
