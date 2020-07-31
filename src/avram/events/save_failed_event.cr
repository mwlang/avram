class Avram::Events::SaveFailedEvent < Pulsar::Event
  getter :operation_class, :invalid_attributes

  def initialize(
    @operation_class : String,
    @invalid_attributes : Array(Avram::GenericAttribute)
  )
  end
end
