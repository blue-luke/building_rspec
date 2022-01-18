class Expect
  def initialize(suggested_answer)
    @suggested_answer = suggested_answer
  end

  def to_equal(correct_answer)
    if @suggested_answer == correct_answer
      "Test passes! :)"
    else
      "Test fails! D:"
    end
  end
end