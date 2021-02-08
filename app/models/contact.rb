class Contact < ApplicationRecord
  belongs_to :company
  jsonb_accessor  :fields,
                  title: :string

end
