# frozen_string_literal: true

RSpec.describe String do
  describe '#limit_print' do
    subject { data.limit_print(limit: limit, more_indicator: more_indicator) }

    let(:limit) { 6 }
    let(:more_indicator) { '.' }

    context 'with short string' do
      let(:data) { 'cat' }

      it { is_expected.to eq(data) }
    end

    context 'with long string' do
      let(:data) { 'elephant' }

      it { is_expected.to eq('elepha...') }
    end

    context 'with empty string' do
      let(:data) { '' }

      it { is_expected.to eq('') }
    end

    context 'with different more_indicator' do
      let(:data) { 'elephant' }
      let(:more_indicator) { '*' }

      it { is_expected.to eq('elepha***') }
    end
  end
end
