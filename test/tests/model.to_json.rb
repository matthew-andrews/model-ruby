require 'minitest/autorun'
require 'json'
require 'matt_andrews/model'

module MattAndrews
  class TestModelToJson < MiniTest::Unit::TestCase
    def test_toJson_exports_the_data_in_a_json_serializable_way
      model = Model.new({ :foo => 'oof', :bar => 'rab', :baz => 'zab' })
      actual = model.to_json
      assert_equal '{"foo":"oof","bar":"rab","baz":"zab"}', JSON.generate(actual)
    end
  end
end
