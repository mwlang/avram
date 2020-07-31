class Avram::Events::FailedQueryEvent < Pulsar::Event
  property :query, :args

  def initialize(@query : String, @args : Array(String))
  end
end
