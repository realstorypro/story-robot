class AddEmailToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :email, :string, default: nil
  end
end
