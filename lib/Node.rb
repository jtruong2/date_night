class Node
  attr_reader :left,
              :right
  attr_accessor :data,
                :title
  def initialize(data, title)
    @data = data
    @title = title
    @left = nil
    @right = nil
  end

  def insert_2(rating, title)
    if rating > @data && @right == nil
      @right = Node.new(rating, title)
    elsif rating > @data
      @right.insert_2(rating, title)
    elsif rating < @data && @left == nil
      @left = Node.new(rating, title)
    elsif rating < @data
      @left.insert_2(rating, title)
    end
  end

  def include?(given_score)
    if given_score == @data
      true
    elsif given_score < @data
      if @left
        @data.left.include?(given_score)
      else
        false
      end
    elsif given_score > @data
      if @right
        @data.right.include?(given_score)
      else
        false
      end
    end
  end
end
