class AddNoAddressToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :no_address, :boolean, deault: false
  end
end
