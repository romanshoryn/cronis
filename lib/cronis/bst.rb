module Bst
  class Tree
    attr_accessor :root

    def insert(node, value)
      if !node.exists?
        node.value = value
        @root = node if @root.nil?
        return node
      end

      node.left = Node.new if node.left.nil?
      node.right = Node.new if node.right.nil?

      return insert(node.left, value) if value < node.value
      return insert(node.right, value) if value >= node.value
    end

    def search(node, value)
      return nil unless node.exists?
      return node if node.value == value

      return search(node.left, value) if value < node.value
      return search(node.right, value) if value >= node.value
    end

    def get_min(node, value)
      return nil unless node.exists?
      return node if node.exists? && !node.left.exists?
      return get_min(node.left)
    end

    def get_max(node, value)
      return nil unless node.exists?
      return node if node.exists? && !node.right.exists?
      return get_max(node.right)
    end

    def to_s(node = @root)
      return if node.nil?
      puts node.value
      to_s(node.left)
      to_s(node.right)
    end
  end

  class Node
    attr_accessor :left
    attr_accessor :right
    attr_accessor :value

    def self.build(value = nil)
      self.new(Node.new, Node.new, value)
    end

    def initialize(left = nil, right = nil, value = nil)
      @left = left
      @right = right
      @value = value
    end

    def exists?
      !@value.nil?
    end

    def has_child?
      !!(@left || @right)
    end
  end
end

