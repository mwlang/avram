class Avram::Events::QueryEvent < Pulsar::TimedEvent
  property :query, :args

  def initialize(@query : String, @args : Array(String))
  end
end
