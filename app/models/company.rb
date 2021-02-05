# frozen_string_literal: true

class Company < ApplicationRecord
  jsonb_accessor  :fields,
                  slug: :string,
                  url: :string,
                  keyword: :string,
                  employees: :string,
                  revenue: :string,
                  ipo: :string,
                  website_tech: :string,
                  company_tech: :string
end
