class Ejobi < ApplicationRecord
  belongs_to :company

  has_one_attached :photo

  validates :name,
            :position,
            :release,
            :start_date,
            :end_date,
            :start_time,
            :end_time,
            :fee,
            :address,
            :state,
            :city,
            presence: true
end
