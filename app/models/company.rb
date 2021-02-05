# frozen_string_literal: true

class Company < ApplicationRecord
  jsonb_accessor :fields,
                 slug: :string,
                 url: :string
end
