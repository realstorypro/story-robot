class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :string
      t.string :last_name
      t.jsonb :fields
      t.references :company

      t.timestamps
    end
  end
end
