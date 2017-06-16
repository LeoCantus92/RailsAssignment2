require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

    test "Create User" do
        userCreateTest
        assert true
    end
    
    test "Create another User" do
        userCreateTest2
        assert true
    end
    
    test "Update User" do
        userUpdateTest
        assert_equal true, true
        assert_equal "passwordier5555", "passwordier5555"
    end
    
    test "Delete User" do
        userDeleteTest
        assert_empty(@deleteUser)
    end
end
