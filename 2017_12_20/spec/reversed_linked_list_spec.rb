require 'linked_list_node'
require 'reversed_linked_list'

describe '#reversed_linked_list' do

    let(:single_link) do
        single = LinkedListNode.new('hello')
        single
    end

    let(:many_links) do
        head = nil
        current_link = nil
        5.times do |i|
            link = LinkedListNode.new(i)
            head = link if head.nil?
            if current_link.nil?
                current_link = link
            else
                current_link.next = link
                current_link = link
            end
        end
        p head
        p current_link
        [head, current_link]
    end

    it 'returns the head if there is only one node in the list' do
        expect(reversed_linked_list(single_link)).to be(single_link)
    end

    it 'reverses linked list' do
        expect(reversed_linked_list(many_links[0])).to be(many_links[1])
    end
end