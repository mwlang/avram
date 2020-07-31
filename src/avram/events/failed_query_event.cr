class Avram::Events::FailedQueryEvent < Pulsar::Event
  getter :query, :args

  def initialize(@query : String, @args : Array(String)?)
  end
end
