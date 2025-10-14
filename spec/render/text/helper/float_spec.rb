# frozen_string_literal: true

RSpec.describe Float do
  describe '#add_percent_sign' do
    subject { data.add_percent_sign }

    context 'with 0.0' do
      let(:data) { 0.0 }

      it { is_expected.to eq('0.0%') }
    end

    context 'with 50.25' do
      let(:data) { 50.25 }

      it { is_expected.to eq('50.25%') }
    end
  end
end
