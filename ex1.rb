class Object
  def expect_to_be_equal(a, b)
    if a == b
      "Test passes! :)"
    else
      "Test fails! D:"
    end
  end
end