require 'minitest/autorun'
require 'matt_andrews/model'

module MattAndrews
  class TestModelClear < MiniTest::Unit::TestCase
    def test_empty_the_data_store
      model = MattAndrews::Model.new({ :foo => 'bar' })
      assert_equal model.get(:foo), 'bar'
      model.clear
      assert_nil model.get(:foo)
    end
  end
end
