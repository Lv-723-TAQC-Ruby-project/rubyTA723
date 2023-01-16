# frozen_string_literal: true
require_relative 'spec_helper'

describe 'XML parser' do
  let(:xml_example) do
    "<note>
    <to>Tove</to>
<from>Jani</from>
    <heading>Reminder</heading>
<body>Don't forget me this weekend!</body>
    </note>"
  end

  it 'parse xml to hash', :xml do
    result = XmlParser.convert_to_hash(xml_example)
    expect(result).to be_a Hash
  end
end