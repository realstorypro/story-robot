class AddExportedToCompany < ActiveRecord::Migration[6.1]
  def change
    add_column :companies, :exported, :boolean, default: false
  end
end
