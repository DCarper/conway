require './spec/spec_helper'

describe Cell do

  describe '#initialize' do
    it 'should set a dead attribute' do
      cell = Cell.new(:dead => true)
      expect(cell.dead).to be_truthy

      cell = Cell.new(:dead => false)
      expect(cell.dead).to be_falsey
    end

    it 'should accept a neighbors attribute' do
      cell = Cell.new(:neighbors => :b)
      expect(cell.neighbors).to eql(:b)
    end
  end

  describe "step!" do
    context "cell is currently alive" do
      context "fewer than two live neighbours" do
        it 'should die'
      end

      context "two or three live neighbours lives" do
        it 'should live'
      end

      context "more than three live neighbors" do
        it 'should die'
      end
    end

    context "cell is currently dead" do
      context "exactly three live neighbours" do
        it 'should live'
      end
    end

  end

end
