# frozen_string_literal: true

require 'spec_helper'

RSpec.describe TTFunk::SciForm do
  let(:sci) { described_class.new(6.123, 5) }

  describe '#to_f' do
    it 'converts to a float' do
      expect(sci.to_f).to eq(612_300)
    end
  end
end
