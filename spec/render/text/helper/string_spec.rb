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

  describe '#escaped_newline_to_newline' do
    subject { data.escaped_newline_to_newline }

    let(:expected_data) { "Hello world!\n\n How are you?" }

    context 'with r and n' do
      let(:data) { 'Hello world!\n\r How are you?' }

      it { is_expected.to eq(expected_data) }
    end

    context 'with r and r' do
      let(:data) { 'Hello world!\r\r How are you?' }

      it { is_expected.to eq(expected_data) }
    end

    context 'with n and n' do
      let(:data) { 'Hello world!\n\n How are you?' }

      it { is_expected.to eq(expected_data) }
    end

    context 'with no escaped' do
      let(:data) { 'Hello world! How are you?' }

      it { is_expected.to eq(data) }
    end
  end

  describe '#to_titleize' do
    subject { data.to_titleize }

    let(:expected_data) { 'Hello World!' }

    context 'with all lowercase' do
      let(:data) { 'hello world!' }

      it { is_expected.to eq(expected_data) }
    end

    context 'with all uppercase' do
      let(:data) { 'HELLO WORLD!' }

      it { is_expected.to eq(expected_data) }
    end

    context 'with having underscore' do
      let(:data) { 'hello_world!' }

      it { is_expected.to eq(expected_data) }
    end

    context 'with having spaces' do
      let(:data) { ' hello world! ' }

      it { is_expected.to eq(expected_data) }
    end

    context 'with 1 character' do
      let(:data) { 'a' }

      it { is_expected.to eq('A') }
    end

    context 'with no character' do
      let(:data) { '' }

      it { is_expected.to eq('') }
    end
  end
end
