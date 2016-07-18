class TakeTestsController < ApplicationController
  def test
    @type_test = TypeTest.find_by(name: "mchat")
  end

end
