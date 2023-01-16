# frozen_string_literal: true

require 'nori'
class XmlParser
  def self.convert_to_hash(xml)
    Nori.new.parse(xml)
  end
end
