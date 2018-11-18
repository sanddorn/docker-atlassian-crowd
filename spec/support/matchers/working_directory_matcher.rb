require 'docker'
require 'rspec'
require 'rspec/expectations'

module Docker
  module DSL
    extend RSpec::Matchers::DSL

    class WorkingDirectory < RSpec::Matchers::BuiltIn::Eq
      alias parent_matches? matches?

      def matches?(actual)
        @actual = actual.json['Config']['WorkingDir']
        parent_matches? @actual
      end

      def failure_message
        "expected image to have working directory #{description}"
      end
    end

    def have_working_directory(path)
      WorkingDirectory.new path
    end

  end
end
