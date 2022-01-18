class Object
  def to_be_equal(suggested_answer, correct_answer)
    if suggested_answer == correct_answer
      "Test passes! :)"
    else
      "Test fails! D:"
    end
  end
end

class Expect < Object
  def initialise(suggested_answer)
    
  end
end