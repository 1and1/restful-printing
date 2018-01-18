require 'tempfile'

module Printing

  class Printer < JsonModel

    attribute :name, String

    def jobs
      Cups.all_jobs(name).each_with_object([]) do |job, array|
        array << Job.new(id: job.first, data: job.last)
      end
    end

    def self.available
      Cups.show_destinations.each_with_object([]) do |name, array|
        array << Printer.new(name: name)
      end
    end

  end

end
