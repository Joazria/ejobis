class Ejober < ApplicationRecord
  belongs_to :user
  has_many :ejobis
  acts_as_favoritable


  has_one_attached :avatar

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
            :city,
            :state,
            :phone,
            presence: true
  validates :cpf,
            :phone,
            presence: true,
            numericality: { only_integer: true }

 include PgSearch::Model
  pg_search_scope :search_by_position,
    against: [ :skills, :position],
    using: {
      tsearch: { prefix: true }
    }

end
