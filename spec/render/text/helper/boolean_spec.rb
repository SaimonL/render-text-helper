# frozen_string_literal: true

RSpec.describe TrueClass do
  let(:boolean) { true }

  describe '#to_yn' do
    subject { boolean.to_yn(capital_letter: capital_letter) }

    context 'with capital_letter being true' do
      let(:capital_letter) { true }

      it { is_expected.to eq('Y') }
    end

    context 'with capital_letter being false' do
      let(:capital_letter) { false }

      it { is_expected.to eq('y') }
    end
  end

  describe '#to_yes_no' do
    subject { boolean.to_yes_no(capital_letter: capital_letter) }

    context 'with capital_letter being true' do
      let(:capital_letter) { true }

      it { is_expected.to eq('YES') }
    end

    context 'with capital_letter being false' do
      let(:capital_letter) { false }

      it { is_expected.to eq('yes') }
    end
  end
end

RSpec.describe FalseClass do
  let(:boolean) { false }

  describe '#to_yn' do
    subject { boolean.to_yn(capital_letter: capital_letter) }

    context 'with capital_letter being true' do
      let(:capital_letter) { true }

      it { is_expected.to eq('N') }
    end

    context 'with capital_letter being false' do
      let(:capital_letter) { false }

      it { is_expected.to eq('n') }
    end
  end

  describe '#to_yes_no' do
    subject { boolean.to_yes_no(capital_letter: capital_letter) }

    context 'with capital_letter being true' do
      let(:capital_letter) { true }

      it { is_expected.to eq('NO') }
    end

    context 'with capital_letter being false' do
      let(:capital_letter) { false }

      it { is_expected.to eq('no') }
    end
  end
end
