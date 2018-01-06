require 'n_in_a_row'

describe "#check_win?" do
    let(:input) { 
        [
            ['x','','o'],
            ['x','o',''],
            ['x','', '']
        ]
    }
    let(:single_input) { 
        [
            ['x','','o'],
            ['o','o','o'],
            ['x','', '']
        ]
    }

    it "checks if the current element is n-in-a-row" do
        expect(check_win?(3, 'x', 0, 0, input)).to be_truthy
        expect(check_win?(1, 'x', 0, 0, input)).to be_truthy
        expect(check_win?(2, 'o', 1, 0, single_input)).to be_truthy
    end

    it "returns false if current element is not n-in-a-row" do
        expect(check_win?(4, 'x', 0, 0, input)).to be_falsey
        expect(check_win?(3, 'o', 0, 2, input)).to be_falsey
        expect(check_win?(2, 'x', 0, 0, single_input)).to be_falsey
    end
    
    
end
