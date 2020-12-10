require 'test_helper'

class BasketballTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test 'should not save basketball with empty information' do
    basketball = Basketball.new

    basketball.save
    refute basketball.valid?
  end

  test 'should save valid basketball info' do
    basketball = Basketball.new

    basketball.name = "Kobe Bryant"
    basketball.team = "Los Angeles Lakers"
    basketball.facts = "He wore two jerseys, 8 and 24"

    basketball.save
    assert basketball.valid?
  end

  test 'should not save basketball without name' do
    basketball = Basketball.new

    basketball.team = "Los Angeles Lakers"
    basketball.facts = "He wore two jerseys, 8 and 24"

    basketball.save
    refute basketball.valid?
  end

  test 'should not save basketball without team' do
    basketball = Basketball.new

    basketball.name = "Kobe Bryant"
    basketball.facts = "He wore two jerseys, 8 and 24"

    basketball.save
    refute basketball.valid?
  end

  test 'should not save basketball without facts' do
    basketball = Basketball.new

    basketball.name = "Kobe Bryant"
    basketball.team = "Los Angeles Lakers"

    basketball.save
    refute basketball.valid?
  end

end
