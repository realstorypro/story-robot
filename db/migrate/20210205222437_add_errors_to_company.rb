class AddErrorsToCompany < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :errors, :boolean
  end
end
