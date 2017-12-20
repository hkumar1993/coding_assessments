require 'linked_list_node'
require 'kth_last_node'

describe '#kth_last_node' do

    let(:kth_node) do
        a = LinkedListNode.new("Angel Food")
        b = LinkedListNode.new("Bundt")
        c = LinkedListNode.new("Cheese")
        d = LinkedListNode.new("Devil's Food")
        e = LinkedListNode.new("Eccles")

        a.next = b
        b.next = c
        c.next = d
        d.next = e

        {
            a: a,
            b: b, 
            c: c, 
            d: d,
            e: e
        }
    end

    it 'returns kth last node' do
        expect(kth_last_node(2,kth_node[:a])).to be(kth_node[:d])
        expect(kth_last_node(1,kth_node[:a])).to be(kth_node[:e])
        expect(kth_last_node(5,kth_node[:a])).to be(kth_node[:a])
    end
end