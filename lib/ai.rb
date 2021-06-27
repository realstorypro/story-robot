require 'csv'
require 'classifier-reborn'

class Ai
  def initialize
    @decision_makers = 'decision_makers.csv'
    @decision_classifier = ClassifierReborn::Bayes.new 'Decision Maker', 'Regular'
  end

  def train_decision_makers
    training_data = File.read("./lib/training/#{@decision_makers}")
    parsed_data = CSV.parse(training_data, headers: true)
    parsed_data.each do |row|
      case row['decisionmaker']
      when 'x'
        @decision_classifier.train('Decision Maker', row['title'])
      when 'o'
        @decision_classifier.train('Regular', row['title'])
      end
    end
  end

  # Determines if the job title belongs to a decison maker
  # @param title [String] the job title, used to determine if the person is a decision maker
  # @return [Boolean] returns true if the title belongs to a decision maker
  def decision_maker?(title)
    return true if @decision_classifier.classify(title) == 'Decision maker'

    false
  end

end
