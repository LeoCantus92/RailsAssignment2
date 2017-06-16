ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'


class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
    
    def userCreateTest
        User.create!(name: "John", email: "johnnyboy@gmail.com", password: "password5555", password_confirmation: "password5555", teacher: false)
    end
    
    def userCreateTest2
        User.create!(name: "Jade", email: "ectoBiologist@gmail.com", password: "413612106211", password_confirmation: "413612106211", teacher: true)
    end
    
    def userUpdateTest
        @updateUser = User.where(name: "John")
        @updateUser = User.update(teacher: true,password: "passwordier5555", password_confirmation: "passwordier5555")
    end
    
    def userDeleteTest
        @deleteUser = User.where(name: "John")
        @deleteUser.destroy_all
    end
    
    def courseCreateTest
        Course.create!(name: "Programming", description: "Teaches you how to program.")
    end
    
    def courseUpdateTest
        @updateCourse = Course.where(name: "Programming")
        @updateCourse = Course.update(description: "Teaches you how to program and make websites.")
    end
    
    def courseDeleteTest
        @deleteCourse = Course.where(name: "Programming")
        @deleteCourse.destroy_all
    end
    
end
