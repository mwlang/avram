require "dexter"
require "lucky_cli"
require "wordsmith"
require "habitat"
require "blank"
require "./avram/object_extensions"
require "./avram/criteria"
require "./avram/type"
require "./avram/table_for"
require "./avram/between_criteria"
require "./avram/charms/**"
require "./avram/migrator/**"
require "./avram/tasks/**"
require "./avram/**"
require "db"
require "pg"
require "./avram/pool_statement_logging"
require "uuid"

module Avram
  Habitat.create do
    setting lazy_load_enabled : Bool = true
    setting database_to_migrate : Avram::Database.class, example: "AppDatabase"
    setting time_formats : Array(String) = [] of String
  end

  Log            = ::Log.for(Avram)
  QueryLog       = Log.for("query")
  FailedQueryLog = Log.for("failed_query")
  SaveFailedLog  = Log.for("save_failed")

  def self.initialize_logging
    # Avram::Events::QueryEvent.subscribe do |event, duration|
    #   Avram::QueryLog.dexter.info do
    #     {query: event.query}
    #   end
    # end

    # Avram::Events::FailedQueryEvent.subscribe do |event|
    #   Avram::FailedQueryLog.dexter.info do
    #     {query: event.query}
    #   end
    # end

    # Avram::Events::SaveFailedEvent.subscribe do |event|
    #   Avram::SaveFailedLog.dexter.warn do
    #     {
    #       failed_to_save: event.operation_class.name,
    #       # validation_errors: error_messages_as_string,
    #     }
    #   end
    # end
  end
end

Avram.initialize_logging
