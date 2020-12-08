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

  test 'should not save duplicate team name' do
    basketball1 = Basketball.new

    basketball1.name = "Kobe Bryant"
    basketball1.team = "Los Angeles Lakers"
    basketball1.facts = "He wore two jerseys, 8 and 24"

    basketball1.save
    assert basketball1.valid?

    basketball2 = Basketball.new

    basketball2.name = "Kobe Bryant"
    basketball2.team = "Golden State Warriors"
    basketball2.facts = "Great player"

    basketball2.save
    refute basketball2.valid?
  end

end
