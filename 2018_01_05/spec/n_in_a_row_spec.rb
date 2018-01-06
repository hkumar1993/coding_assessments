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

describe "#n_in_a_row" do
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
    it "finds which element is n-in-a-row" do
        expect(n_in_a_row(3, input)).to eq('x')
        expect(n_in_a_row(1, input)).to eq('x')
        expect(n_in_a_row(2, single_input)).to eq('o')
        expect(n_in_a_row(3, single_input)).to eq('o')
    end
    
end
