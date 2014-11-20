module ChicagoEmployees
  class Employee
    attr_accessor :job_title, :department, :name, :salary

    def initialize(hash)
      @job_title = hash["title"]
      @department = hash["department"]
      @name = hash["name"]
      @salary = hash["salary"]
    end
  end
end