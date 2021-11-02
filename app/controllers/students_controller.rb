class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students
    end

    def grades 
        sortedgrades = Student.all.sort_by{|g| g.grade}.reverse
        render json: sortedgrades
    end

    def highest_grade
        topgrade = Student.maximum(:grade)
        beststudent = Student.where(grade: topgrade)
        render json: beststudent
    end
end
