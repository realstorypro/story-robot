class AddFoundToCompany < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :found, :boolean
  end
end
