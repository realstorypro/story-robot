class AddUploadedToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :uploaded, :boolean, default: false
  end
end
