require 'membrane'
require File.expand_path('../../../helpers/hash_copy', __FILE__)
require File.expand_path('../../../common/msgbase', __FILE__)

module Schemata
  module Component
    module Foo
    end
  end
end

module Schemata::Component::Foo
  class V10
    include Schemata::MessageBase

    SCHEMA = Membrane::SchemaParser.parse do
      {
        "foo1" => String,
        "foo2" => Integer
      }
    end

    MOCK_VALUES = {
      "foo1" => "foo",
      "foo2" => 2
    }

    MIN_VERSION_ALLOWED = 10

    def self.upvert(old_data)
      raise NotImplementedError.new
    end

    def generate_old_fields
      raise NotImplementedError.new
    end
  end
end
