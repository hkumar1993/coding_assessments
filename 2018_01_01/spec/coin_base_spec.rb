require 'coin_base'

describe "#coin_base_recursive" do
    it "returns an array of possible combinations of coins to make the amount of money" do
        expect(coin_base_recursive(4,[1,2,3])).to include([1,1,1,1], [2,1,1], [3,1], [2,2])
    end
end

describe "#coin_base_memo" do
    it "returns an array of possible combinations of coins to make the amount of money" do
        CoinClass = Coin.new
        expect(CoinClass.coin_base_memo(4,[1,2,3])).to include([1,1,1,1], [2,1,1], [3,1], [2,2])
    end
end

describe "#coin_base" do
    it "returns an array of possible combinations of coins to make the amount of money" do
        expect(coin_base(4,[1,2,3])).to include([1,1,1,1], [2,1,1], [3,1], [2,2])
    end
end

