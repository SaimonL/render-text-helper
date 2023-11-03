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

  describe '#to_smart_array' do
    subject { data.to_smart_array(separator) }

    let(:expected_array) { %w[cat dog map pat] }

    context 'without any separator specified' do
      let(:separator) { nil }

      context 'with comma separator' do
        let(:data) { 'cat, dog , map ,pat' }

        it { is_expected.to eq(expected_array) }
      end

      context 'with space separator' do
        let(:data) { ' cat dog   map  pat ' }

        it { is_expected.to eq(expected_array) }
      end
    end

    context 'with a separator specified' do
      let(:separator) { '!' }

      let(:data) { 'cat! dog ! map !pat' }

      it { is_expected.to eq(expected_array) }
    end
  end
end
