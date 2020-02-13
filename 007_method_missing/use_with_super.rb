# intercept an unrecognized message

class Student
  def method_missing(m, *args)
    if m.to_s.start_with?("grade_for_")
      puts "You got an 5 in #{m.to_s.split("_").last.capitalize}!"
    else
      super
    end
  end
end

st = Student.new
st.grade_for_English