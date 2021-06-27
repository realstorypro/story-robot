class CustomFields
  def initialize
    # custom.cf_6evh1292hlGTL0FqvkAXb3ROE6JBX1ZmqADApRpAndh - Decision Maker [Contact] w/ Yes & No values
    # custom.cf_iuK23d7LKjVFuR9z52ddWRHEjCkkHZ23xCRzLvGIP83 - Excluded from email sequence [Contact] w/ Yes & No values
    # custom.cf_He1yXt17QGicc0ZXLm5c813K69CNcKpBqBisz84t1HN - Available decision makers [Lead] (integer)

    @fields = {
      decision_maker: 'custom.cf_6evh1292hlGTL0FqvkAXb3ROE6JBX1ZmqADApRpAndh',
      excluded_from_sequence: 'custom.cf_iuK23d7LKjVFuR9z52ddWRHEjCkkHZ23xCRzLvGIP83',
      available_decision_makers: 'custom.cf_He1yXt17QGicc0ZXLm5c813K69CNcKpBqBisz84t1HN'
    }
  end

  def get(key)
    @fields[key]
  end
end
