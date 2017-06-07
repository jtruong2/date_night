
gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'Node'

class NodeTest < Minitest::Test
  def test_node_knows_its_own_score
    node = Node.new(53, "Boss Baby")
    assert_equal 53, node.data
  end

  def test_node_knows_its_own_title
    node = Node.new(82, "Guardians of the Galaxy")
    assert_equal "Guardians of the Galaxy", node.title
  end

  def test_node_knows_left_is_nil_by_default
    node = Node.new(16, "Elf")
    assert_nil node.left
  end

  def test_node_knows_right_is_nil_by_default
    node = Node.new(87, "The Revenent")
    assert_nil node.right
  end

end
