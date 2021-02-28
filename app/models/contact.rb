class Contact < ApplicationRecord
  belongs_to :company
  jsonb_accessor  :fields,
                  title: :string,
                  email: :string,
                  lat: :string,
                  lng: :string,
                  timezone: :string

end
