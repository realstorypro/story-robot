class CustomFields
  def initialize
    # custom.cf_6evh1292hlGTL0FqvkAXb3ROE6JBX1ZmqADApRpAndh - Decision Maker [Contact] (choice-single) w/ Yes & No
    # custom.cf_iuK23d7LKjVFuR9z52ddWRHEjCkkHZ23xCRzLvGIP83 - Excluded from email sequence [Contact] (choice-single) w/ Yes & No
    # custom.cf_1LlBnvVqG10AFTlcYqdiJ76WqysEyCGtT5ft0jMwjqu - Clicked Link [Contact] (choice-single) w/ Yes & No
    # custom.cf_He1yXt17QGicc0ZXLm5c813K69CNcKpBqBisz84t1HN - Available decision makers [Lead] (integer)
    # custom.cf_KhipBANwlul9s4rxq1r0Hpw2lOekg4Q73EvyXj46IDQ - Technology [Lead] (choice-single)
    # custom.cf_l85fqSolodDAbcfiHDqxGb9fVvsrnQhaMem3VhoPexO - Frequency [Lead] (multiple-choice)

    @fields = {
      decision_maker: 'custom.cf_6evh1292hlGTL0FqvkAXb3ROE6JBX1ZmqADApRpAndh',
      excluded_from_sequence: 'custom.cf_iuK23d7LKjVFuR9z52ddWRHEjCkkHZ23xCRzLvGIP83',
      clicked_link: 'custom.cf_1LlBnvVqG10AFTlcYqdiJ76WqysEyCGtT5ft0jMwjqu',
      available_decision_makers: 'custom.cf_He1yXt17QGicc0ZXLm5c813K69CNcKpBqBisz84t1HN',
      technology: 'custom.cf_KhipBANwlul9s4rxq1r0Hpw2lOekg4Q73EvyXj46IDQ',
      frequency: 'custom.cf_l85fqSolodDAbcfiHDqxGb9fVvsrnQhaMem3VhoPexO'
    }
  end

  def get(key)
    @fields[key]
  end
end
