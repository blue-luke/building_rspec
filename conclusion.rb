class Expect
  def initialize(suggested_answer)
    @suggested_answer = suggested_answer
  end

  def to(correct_answer_object)
    if correct_answer_object.compare(@suggested_answer)
      "Test passes! :)"
    else
      "Test fails! D:"
    end
  end
end

class Equal
  def initialize(correct_answer)
    @correct_answer = correct_answer
  end

  def compare(suggested_answer)
    @correct_answer == suggested_answer
  end
end

class Include
  def initialize(array_element)
    @array_element = array_element
  end

  def compare(array)
    array.include?(@array_element)
  end
end

def expect(value)
  Expect.new(value)
end

def eq(value)
  Equal.new(value)
end

def pinclude(value)
  Include.new(value)
end

# > Expect.new(true).to(Equal.new(true))
# expect([1, 2, 3]).to pinclude 2
# expect([1, 2, 3]).to(pinclude(2))

