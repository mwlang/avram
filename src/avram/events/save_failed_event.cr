class Avram::Events::SaveFailedEvent < Pulsar::TimedEvent
  property :operation_class, :invalid_attributes

  def initialize(@operation_class : Avram::SaveOperation.class, @invalid_attributes : Array(Avram::Attribute))
  end
end
