class Expect
  attr_reader :answer
  def initialize(answer)
    @answer = answer
  end

  def to(correct_answer_object)
    if @answer == correct_answer_object.answer
      "Test passes! :)"
    else
      "Test fails! D:"
    end
  end
end


# > Expect.new(true).to(Expect.new(true))
# => "Test passes! :)"
# > Expect.new(true).to(Equal.new(false))
# => "Test fails! D:"