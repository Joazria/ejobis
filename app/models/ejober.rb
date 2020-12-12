class Ejober < ApplicationRecord
  belongs_to :user
  has_many :ejobis

    validates :name,
              :surname,
              :birthday,
              :gender,
              :ethnic,
              :deficiency,
              :skills,
              :release,
              :position,
              :address,
              presence: true
  validates :cpf, presence: true, numericality: { only_integer: true }

end
