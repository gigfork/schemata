require 'schemata/dea'
require 'spec_helper'

describe Schemata::DEA::HeartbeatResponse do
  it_behaves_like "a message type"
end

describe Schemata::DEA::HeartbeatResponse::V1 do
  it_behaves_like "a message"
end
