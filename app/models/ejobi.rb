class Ejobi < ApplicationRecord
  belongs_to :ejober
  belongs_to :company

  validates :name,
            :position,
            :release,
            :start_date,
            :end_date,
            :start_time,
            :end_time,
            :fee,
            :address,
            :acceptance,
            :validation,
            presence: true
end
