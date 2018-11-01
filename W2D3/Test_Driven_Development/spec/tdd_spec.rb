require 'tdd'
require 'rspec'
require 'spec_helper'


describe Array do
  # subject(:arr) { Array.new([1,2,1,3,3])}
  describe "#my_uniq" do
    it "returns unique elements in the order they originally appeared" do
      expect([1,2,1,3,3].my_uniq).to eq([1, 2, 3])
    end
  end
end

describe Array do
  describe "#to_sum" do
    context "it doesn't double count zero" do
      it "finds all pairs of positions where the elements at those positions sum to zero" do
        expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
      end
    end
    
    context "it does double count zero" do
      it "finds all pairs of positions where the elements at those positions sum to zero" do
        expect([-1, 0, 2, -2, 0, 1].two_sum).to eq([[0, 5],[1,4],[2, 3]])
      end
    end
  end
end

describe "#my_transpose(array)" do
   let(:rows)  {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
  it "switches the rows to columns" do
    expect(my_transpose(rows)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end
end

describe "#stock_picker(arr)" do
  let(:prices) {[1,2,3,4,5,6,7]}
  it "returns the most profitable pair o indices" do
    expect(stock_picker(prices)).to eq([0,6])
  end
end