class RemoveColumnFromContacts < ActiveRecord::Migration[6.1]
  def change
    remove_column :contacts, :string
  end
end
