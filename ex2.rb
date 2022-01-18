class Object
  def to_be_equal(a, b)
    if a == b
      "Test passes! :)"
    else
      "Test fails! D:"
    end
  end
end

class Expect < Object
end