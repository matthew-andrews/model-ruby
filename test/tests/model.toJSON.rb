require 'minitest/autorun'
require 'json'
require 'model'

class TestModelToJSON < MiniTest::Unit::TestCase
  def test_toJSON_exports_the_data_in_a_json_serializable_way
    model = Model.new({ :foo => 'oof', :bar => 'rab', :baz => 'zab' })
    actual = model.toJSON
    assert_equal '{"foo":"oof","bar":"rab","baz":"zab"}', JSON.generate(actual)
  end
end
