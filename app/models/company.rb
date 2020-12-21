class Company < ApplicationRecord
  belongs_to :user
  has_many :ejobis
  has_many :ejobi_validations, through: :ejobis
  accepts_nested_attributes_for :ejobi_validations


  has_one_attached :logo

  validates :release,
            :website,
            :linkedin,
            :city,
            :state,
            :address,
            presence: true
  validates :cnpj, :phone, presence: true, numericality: { only_integer: true }
  validates :name, :email, uniqueness: true

end
