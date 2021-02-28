class Contact < ApplicationRecord
  belongs_to :company
  jsonb_accessor  :fields,
                  title: :string,
                  email: :string,
                  lat: :string,
                  lang: :string,
                  timezone: :string

end
