require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
    
    test "Create another User" do
        userCreateTest2
        assert true
    end
    
    test "Complete User" do
        u = userCreateTest
        assert true
        
        u = User.where(name: "John").first
        userUpdateTest(u)
        assert_equal true, u.teacher
        assert_equal "ectioBilogist@gmail.com", u.email
        
        userDeleteTest
        assert_empty(@deleteUser)
    end
end
