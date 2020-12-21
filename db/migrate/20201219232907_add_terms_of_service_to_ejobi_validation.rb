class AddTermsOfServiceToEjobiValidation < ActiveRecord::Migration[6.0]
  def change
    add_column :ejobi_validations, :TermsOfServices, :string
  end
end
