class StudentsController < ApplicationController
  require 'httparty'

  BASE_URL = 'https://sms-razb.onrender.com/students'.freeze

  # GET /students
  def index
    response = HTTParty.get(BASE_URL)
    @students = response.parsed_response
  end

  # POST /students
  def create
    student_params = {
      name: params[:name],
      email: params[:email],
      password: params[:password]
    }

    response = HTTParty.post(BASE_URL, body: student_params.to_json, headers: { 'Content-Type' => 'application/json' })

    if response.success?
      flash[:success] = 'Student created successfully!'
    else
      flash[:error] = 'Failed to create student!'
    end

    redirect_to students_path
  end
end
