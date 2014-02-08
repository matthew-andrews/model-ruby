require 'minitest/autorun'
require 'model'

class TestModel < MiniTest::Unit::TestCase
  def setup
    @sample_data = {
      :foo => 'oof',
      :bar => 'rab',
      :baz => 'zab'
    }
  end

  def test_stores_the_hash_passed_into_the_constructor
    model = Model.new @sample_data
    assert_equal model.get(:foo), 'oof'
    assert_equal model.get(:bar), 'rab'
    assert_equal model.get(:baz), 'zab'
  end

  def test_can_be_constructed_with_no_data
    model = Model.new
    assert_instance_of Model, model
  end

  def test_can_overwrite_specific_key
    model = Model.new @sample_data
    model.set :foo, 'foobar'

    assert_equal 'foobar', model.get(:foo)
    assert_equal 'rab', model.get(:bar)
    assert_equal 'zab', model.get(:baz)
  end

  def test_can_get_all_the_data
    model = Model.new @sample_data
    assert_equal @sample_data, model.get
  end

  def test_set_and_clear_chain
    model = Model.new
    model.set(:apples, 'pears').clear.set('123', '456')
    assert_equal({ '123' => '456' }, model.get)
  end

  def test_set_accepts_hashes
    model = Model.new
    model.set({
      :test => 1,
      :test2 => 2
    })

    assert_equal 1, model.get(:test)
    assert_equal 2, model.get(:test2)

    model.set({
      :test2 => 3,
      :cats => 'dogs'
    })

    assert_equal 3, model.get(:test2)
    assert_equal 'dogs', model.get(:cats)
  end

  def test_destroy_clears
    model = Model.new
    model.set({
      :test => 'blah'
    })

    model.destroy
    assert_nil model.get :test
  end
end
