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
end
