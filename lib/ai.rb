require 'csv'
require 'ruby-fann'
require 'classifier-reborn'

class Ai
  def initialize
    @decision_makers = 'decision_makers.csv'
    @decision_classifier = ClassifierReborn::Bayes.new 'Decision Maker', 'Regular'

    @sequence_training = 'sequence_training.csv'
    @sequence_model = RubyFann::Standard.new(
        num_inputs: 5,
        hidden_neurons: [1],
        num_outputs: 1
      )

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

  def train_sequence_training
    training_data = File.read("./lib/training/#{@sequence_training}")
    parsed_data = CSV.parse(training_data, headers: true)

    x_data = []
    y_data = []

    parsed_data.each do |row|
      x_data.push ([row['weeks old'].to_i,
                    row['segment'].to_i,
                    yes_no(row['clicked_link']),
                    yes_no(row['visited_website']),
                    yes_no(row['visited pricing page'])])

      case row['sequence']
      when 'x'
        y_data.push [1.to_i]
      when 'o'
        y_data.push [0.to_i]
      end

    end

    train = RubyFann::TrainData.new(inputs: x_data, desired_outputs: y_data)
    @sequence_model.train_on_data(train, 1000, 10, 0.80)
  end

  # Determines if the job title belongs to a decison maker
  # @param title [String] the job title, used to determine if the person is a decision maker
  # @return [Boolean] returns true if the title belongs to a decision maker
  def decision_maker?(title)
    return true if @decision_classifier.classify(title) == 'Decision maker'

    false
  end

  def send_email?(weeks_old, segment, clicked_link, visited_website, visited_pricing)
    @sequence_model.run([weeks_old, segment, clicked_link, visited_website, visited_pricing])
  end

  private

  # converts yes or no to an int
  def yes_no(val)
    if val == 'yes'
      1.to_i
    else
      0.to_i
    end
  end

end
