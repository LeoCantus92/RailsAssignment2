require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  
    test "Create Course" do
        courseCreateTest
        assert true
    end
    
    test "Update Course" do
        courseUpdateTest
        assert_equal "Teaches you how to program.", "Teaches you how to program."
    end
    
    test "Delete Course" do
        courseDeleteTest
        assert_empty(@deleteCourse)
    end
end
