class StudentsController < ApplicationController

  get '/' do
    @students = Student.all

    flat :"students/index"
  end

  get '/students/:id' do
    @student = Student.find(params[:id])
    flat :"students/show"
  end

  get '/archives' do 
    flat :"archives"
  end

end