require 'minitest/autorun'
require 'model'

class TestModelClear < MiniTest::Unit::TestCase
  def test_empty_the_data_store
    model = Model.new({ :foo => 'bar' })
    assert_equal model.get(:foo), 'bar'
    model.clear
    assert_nil model.get(:foo)
  end
end
