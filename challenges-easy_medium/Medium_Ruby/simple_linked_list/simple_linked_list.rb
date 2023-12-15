class Element
  attr_accessor :datum, :next

  def initialize(datum, next_el = nil)
    @datum = datum
    @next = next_el
  end

  def tail?
    @next.nil?
  end
end

class SimpleLinkedList
  attr_reader :head

  def push(item)
    @head = Element.new(item, head) if item
  end

  def empty?
    !head
  end

  def peek
    head&.datum
  end

  def pop
    current_datum = head.datum
    @head = head.next
    current_datum
  end

  def self.from_a(arr)
    arr = [] unless arr.instance_of? Array

    arr.reverse_each.with_object(new) { |i, list| list.push(i) }
  end

  def reverse
    self.class.from_a(to_a.reverse)
  end

  def to_a
    map_with_object([]) { |el, arr| arr << el.datum }
  end

  def size
    map_with_object(0) { |_, size| size + 1 }
  end

  private

  def map_with_object(obj)
    current_el = head
    while current_el
      obj = yield(current_el, obj)
      current_el = current_el.next
    end
    obj
  end
end
