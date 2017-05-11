gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'BinarySearchTree'

class BinarySearchTreeTest < Minitest::Test
  def test_can_insert_data_in_root
    tree = BinarySearchTree.new
    tree.insert_1(50, 'Armageddon')
    assert_equal 50, tree.root.data
  end

  def test_can_insert_data_to_left_of_root
    tree = BinarySearchTree.new
    tree.insert_1(50,'Armageddon')
    tree.insert_1(40, 'Assassination')
    assert_equal 40, tree.root.left.data
  end

  def test_can_insert_data_to_right_of_root
    tree = BinarySearchTree.new
    tree.insert_1(50, 'Armageddon')
    tree.insert_1(60, 'Frozen Planet: The Epic Journey')
    assert_equal 60, tree.root.right.data
  end

  def test_left_child_can_insert_right
    tree = BinarySearchTree.new
    tree.insert_1(50, 'Armageddon')
    tree.insert_1(30, 'Turbo Kid')
    tree.insert_1(40, 'Sharknado 3')
    assert_equal 40, tree.root.left.right.data
  end

  def test_left_child_can_insert_left
    tree = BinarySearchTree.new
    tree.insert_1(50, 'Armageddon')
    tree.insert_1(30, 'Turbo Kid')
    tree.insert_1(20, '9 Muses of Star Empire')
    assert_equal 20, tree.root.left.left.data
  end

  def test_right_child_can_insert_right
    tree = BinarySearchTree.new
    tree.insert_1(54, 'Pound of Flesh')
    tree.insert_1(67, 'Alpha and Omega 3: The Great Wolf Games')
    tree.insert_1(88, 'Swim Little Fish Swim')
    assert_equal 88, tree.root.right.right.data
  end

  def test_right_child_can_insert_left
    tree = BinarySearchTree.new
    tree.insert_1(54, 'Pound of Flesh')
    tree.insert_1(67, 'Alpha and Omega 3: The Great Wolf Games')
    tree.insert_1(60, 'Frozen Planet: The Epic Journey')
    assert_equal 60, tree.root.right.left.data
  end

  def test_root_is_Node_class
    tree = BinarySearchTree.new
    tree.insert_1(55, 'Hannibal Buress: Animal Furnace')
    assert_equal Node, tree.root.class
  end

  def test_can_find_data_of_root
    tree = BinarySearchTree.new
    tree.insert_1(54, 'Pound of Flesh')
    assert_equal true, tree.include?(54)
  end

  def test_can_find_data_of_left_child
    tree = BinarySearchTree.new
    tree.insert_1(54, 'Pound of Flesh')
    tree.insert_1(20, '9 Muses of Star Empire')
    assert_equal true, tree.root.left.include?(20)
  end

  def test_can_find_data_of_right_child
    tree = BinarySearchTree.new
    tree.insert_1(54, 'Pound of Flesh')
    tree.insert_1(70, 'Meet My Valentine')
    assert_equal true, tree.root.right.include?(70)
  end

  def test_left_child_can_find_left
    tree = BinarySearchTree.new
    tree.insert_1(54, 'Pound of Flesh')
    tree.insert_1(34, 'Hellions')
    tree.insert_1(22, 'A Faster Horse')
    assert_equal true, tree.root.left.left.include?(22)
  end

  def test_left_child_can_find_right
    tree = BinarySearchTree.new
    tree.insert_1(54, 'Pound of Flesh')
    tree.insert_1(34, 'The Land Before Time XIV: Journey of the Brave')
    tree.insert_1(40, 'Sharknado 3')
    assert_equal true, tree.root.left.right.include?(40)
  end

  def test_right_child_can_find_right
    tree = BinarySearchTree.new
    tree.insert_1(54, 'Pound of Flesh')
    tree.insert_1(67, 'Experimenter')
    tree.insert_1(88, 'French Dirty')
    assert_equal true, tree.root.right.right.include?(88)
  end

  def test_right_child_can_find_left
    tree = BinarySearchTree.new
    tree.insert_1(54, 'Pound of Flesh')
    tree.insert_1(67, 'Experimenter')
    tree.insert_1(60, 'Frozen Planet: The Epic Journey')
    assert_equal true, tree.root.right.left.include?(60)
  end

  def test_can_reject_if_data_doesnt_exist
    tree = BinarySearchTree.new
    tree.insert_1(45, 'Animals United')
    refute tree.root.include?(60)
  end

  def test_can_find_depth
    skip
    tree = BinarySearchTree.new
    tree.insert_1(50, 'Armageddon')
    tree.insert_1(45, 'Animals United')
    assert_equal 1, tree.depth_of(45)
  end

  def test_nil_if_cant_find_depth
    skip
    tree = BinarySearchTree.new
    tree.insert_1(50, 'Armageddon')
    tree.insert_1(67, 'Experimenter')
    tree.insert_1(45, 'Animals United')
    assert_nil, tree.depth_of(30)
  end

  def test_can_find_max
    skip
    tree = BinarySearchTree.new
    tree.insert_1(50, 'Armageddon')
    tree.insert_1(60, 'Frozen Planet: The Epic Journey')
    tree.insert_1(70, 'Meet My Valentine')
    assert_equal 70, tree.max
  end

  def test_can_find_min
    skip
    tree = BinarySearchTree.new
    tree.insert_1(50, 'Armageddon')
    tree.insert_1(60, 'Frozen Planet: The Epic Journey')
    tree.insert_1(70, 'Meet My Valentine')
    assert_equal 50, tree.min
  end
end
