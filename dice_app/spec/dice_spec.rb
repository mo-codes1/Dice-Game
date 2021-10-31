require './lib/dice'

describe Dice_roll do
  it "a user should be able to roll some dice" do
    expect(Dice_roll)
  end
  it { is_expected.to respond_to(:roll).with(1).argument }
  it "should return a number between 1 and 6" do
    @dice = Dice_roll.new
    expect(@dice.roll).to be > 0
    expect(@dice.roll).to be < 6
  end
  it "should allow me to roll more than one dice" do
    @dice = Dice_roll.new
    expect(@dice.roll(3)).to eq 3.times {rand(6)}
  end
  it "should show the user each dice roll"
    @dice = Dice_roll.new
    expect(@dice.roll(3)).to output.to_stdout
  end
  let(:subject) {described_class.new}
  describe 'roll' do
    it 'calls rand' do
      expect(subject).to receive(:rand).and_return(1)
      expect(subject.roll).to eq 1
    end
  end
