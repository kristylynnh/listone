class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end


def reverse_list(list)


  while list
    reversed_list = LinkedListNode.new(list.value, reversed_list)
    list = list.next_node
  end
  reversed_list
end


class Stack
  attr_reader :data

  def initialize
    @data = nil
  end


  def push(value)
    @data = LinkedListNode.new(value, @data)
  end


  def pop
    if @data
      top_value = @data.value      
      @data = @data.next_node      
      top_value                     
    else
      nil

    end
  end
  
  def empty?
    @data.nil?
  end

end

def reverse_list_with_stack(list)
  holder_stack = Stack.new

  while list
    holder_stack.push(list.value)
    list = list.next_node
  end

  prev_node = head = LinkedListNode.new(holder_stack.pop)
  return nil if prev_node.nil?
  until holder_stack.empty?
    cur_node = LinkedListNode.new(holder_stack.pop)
    prev_node.next_node = cur_node
    prev_node = cur_node
  end
  head      
end


stack = Stack.new


stack.push(1)



stack.push(2)


stack.pop



stack.pop



stack.pop


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)


puts "linked list"
puts print_values(node3)
puts "-------"


puts "reversed list"
print_values(reverse_list(node3))
print_values(reverse_list_with_stack(node3))
puts


node4 = LinkedListNode.new(29)
node5 = LinkedListNode.new(53, node4)
node6 = LinkedListNode.new(91, node5)
node7 = LinkedListNode.new(271, node6)
node8 = LinkedListNode.new(3.14159,node7)
node9 = LinkedListNode.new(59, node8)

puts "linked list"
puts print_values(node9)
puts "-------"

puts "reversed list"
print_values(reverse_list(node9))
print_values(reverse_list_with_stack(node9))
puts