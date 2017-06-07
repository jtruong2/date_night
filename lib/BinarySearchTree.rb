require_relative 'Node'
require 'pry'
class BinarySearchTree
  attr_reader :root
  def initialize
    @root = nil
  end

  def insert_1(rating, title)
    first_insert = Node.new(rating, title)
    if @root == nil
      @root = first_insert
    else
      @root.insert_2(rating, title)
    end
  end

  def include?(given_score)
    if @root
      @root.include?(given_score)
    else
      false
    end
  end
end
