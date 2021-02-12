class AddDefaultToCompany < ActiveRecord::Migration[6.1]
  def change
    change_column :companies, :error, :boolean, default: false
    change_column :companies, :found, :boolean, default: false
  end
end
