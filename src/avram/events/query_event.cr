class Avram::Events::QueryEvent < Pulsar::TimedEvent
  getter :query, :args

  def initialize(@query : String, @args : Array(String))
  end
end
