class StudentsController < ApplicationController

  get '/' do
    @students = []
    1.upto(4) do |num|
        @students << Student.new.tap do |student|
          student.name = "Student#{num}"
          student.age = 30
          student.city = "New York"
        end
    end

    flat :"students/index"
  end

  get '/archives' do 
    flat :"archives"
  end

end