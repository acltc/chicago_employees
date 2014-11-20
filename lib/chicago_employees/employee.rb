module ChicagoEmployees
  class Employee
    attr_accessor :job_title, :department, :name, :salary

    def initialize(hash)
      @job_title = hash["job_titles"]
      @department = hash["department"]
      @name = hash["name"]
      @salary = hash["employee_annual_salary"]
    end
  end
end