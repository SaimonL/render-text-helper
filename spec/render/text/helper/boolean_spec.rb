# frozen_string_literal: true

RSpec.describe TrueClass do
  let(:boolean) { true }

  describe '#to_i' do
    subject { boolean.to_i }

    it { is_expected.to eql(1) }
  end

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
    subject { boolean.to_yes_no(casting) }

    context 'with capital letters casting' do
      let(:casting) { :upcase }

      it { is_expected.to eq('YES') }
    end

    context 'with capitalize letters casting' do
      let(:casting) { :capitalize }

      it { is_expected.to eq('Yes') }
    end

    context 'with lower letters casting' do
      let(:casting) { :downcase }

      it { is_expected.to eq('yes') }
    end

    context 'with no params being passed' do
      it 'is expected to be capitalize' do
        expect(boolean.to_yes_no).to eq('Yes')
      end
    end
  end
end

RSpec.describe FalseClass do
  let(:boolean) { false }

  describe '#to_i' do
    subject { boolean.to_i }

    it { is_expected.to eql(0) }
  end

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
    subject { boolean.to_yes_no(casting) }

    context 'with capital letters casting' do
      let(:casting) { :upcase }

      it { is_expected.to eq('NO') }
    end

    context 'with capitalize letters casting' do
      let(:casting) { :capitalize }

      it { is_expected.to eq('No') }
    end

    context 'with lower letters casting' do
      let(:casting) { :downcase }

      it { is_expected.to eq('no') }
    end

    context 'with no params being passed' do
      it 'is expected to be capitalize' do
        expect(boolean.to_yes_no).to eq('No')
      end
    end
  end
end
