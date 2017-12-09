require 'text_dollar'

describe "#text_dollar" do
    let(:test1) { 3 }
    let(:test2) { 466 }
    let(:test3) { 1234 }
    let(:test4) { 10 }
    let(:test5) { 21 }
    let(:test6) { 2200 }

    it "returns the English representation of the number given" do  
        expect(text_dollar(test1)).to eq("ThreeDollars")    
        expect(text_dollar(test2)).to eq("FourHundredSixtySixDollars")    
        expect(text_dollar(test3)).to eq("OneThousandTwoHundredThirtyFourDollars")    
        expect(text_dollar(test4)).to eq("TenDollars")    
        expect(text_dollar(test5)).to eq("TwentyOneDollars")    
    end

    it "returns the largest base representation in ambiguous numbers" do
        expect(text_dollar(test6)).to eq("TwoThousandTwoHundredDollars")
    end
    

end