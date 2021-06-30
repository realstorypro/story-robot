class OpportunityStatuses
  def initialize
    @statuses = {
    }
  end

  def get(key)
    @statuses[key]
  end
end
