class Expect
  def initialize(suggested_answer)
    @suggested_answer = suggested_answer
  end

  def to(correct_answer_object)
    if @suggested_answer == correct_answer_object.correct_answer
      "Test passes! :)"
    else
      "Test fails! D:"
    end
  end
end

class Equal
  attr_reader :correct_answer
  def initialize(correct_answer)
    @correct_answer = correct_answer
  end
end


def expect(value)
  Expect.new(value)
end

def eq(value)
  Equal.new(value)
end


# > Expect.new(true).to(Equal.new(true))
# expect([1, 2, 3]).to include 2
# expect([1, 2, 3]).to(include(2))

