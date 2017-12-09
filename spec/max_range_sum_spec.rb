require 'max_range_sum'

describe "#max_range_sum" do
    let(:test1) { [7, -3, -10, 4, 2, 8, -2, 4, -5, -2] }
    let(:test2) { [-5, -4, -3, -2, -1] }

    it "returns the maximum contiguous range sum" do
        expect(max_range_sum(test1)).to eq(16)
    end

    it "returns 0 if the max sum is negative" do
        expect(max_range_sum(test2)).to eq(0)
    end

end