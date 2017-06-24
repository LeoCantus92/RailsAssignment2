require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest

    test "Complete Course" do
        c = courseCreateTest
        assert true
        
        c = Course.where(name: "Programming").first
        courseUpdateTest(c)
        assert_equal "Teaches you how to program.", c.description
        
        courseDeleteTest
        assert_empty(@deleteCourse)
    end
end
