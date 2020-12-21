class EjobiValidation < ApplicationRecord
  belongs_to :ejobi
  belongs_to :ejober

   validates :apply,
             :appove,
             presence: true



    validates :terms_of_service,
              acceptance: { accept: 'ACEITAR' }
    validates :apply,
              acceptance: { accept: 'APPLICAR' }

end
