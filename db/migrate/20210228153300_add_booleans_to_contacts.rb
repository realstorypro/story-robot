class AddBooleansToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :enriched, :boolean, default: false
    add_column :contacts, :invalid_email, :boolean, default: false
  end
end
