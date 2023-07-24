# frozen_string_literal: true

RSpec.describe String do
  describe '#limit_print' do
    subject { data.limit_print(limit:, more_indicator:, indicator_length:) }

    let(:limit) { 6 }
    let(:more_indicator) { '.' }
    let(:indicator_length) { 3 }

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

    context 'with different indicator_length' do
      let(:data) { 'elephant' }
      let(:indicator_length) { 0 }

      it { is_expected.to eq('elepha') }
    end
  end
end
