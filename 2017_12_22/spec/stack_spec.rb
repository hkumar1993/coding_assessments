require 'stack'

describe 'Stack' do

    let(:empty_stack){ Stack.new() }
    let(:initialize_stack){ Stack.new([1,2,3]) }

    describe '#initialize' do
        it 'initializes an empty stack' do
            expect(empty_stack.store).to eq([])
        end
        
        it 'initializes a stack with array value' do
            expect(initialize_stack.store).to eq([1,2,3])
        end
    end

    describe '#push' do
        it 'pushes new element to top of stack' do
            expect(initialize_stack.push(0)).to eq([0,1,2,3])
        end
    end

    describe '#pop' do
        let(:popped){ initialize_stack.pop }
        it 'pops element from top of stack' do
            expect(popped).to eq(1)
            expect(initialize_stack.store).to eq([2,3])
        end
    end
end