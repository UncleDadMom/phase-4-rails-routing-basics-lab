class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students
    end

    def grades 
        sortedgrades = Student.all.sort_by{|g| g.grade}.reverse
        render json: sortedgrades
    end
end
