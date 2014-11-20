require 'unirest'
require 'employee'

module ChicagoEmployees
  class Client
    def self.employees
      employees = []
      employee_hashes = Unirest.get("http://data.cityofchicago.org/resource/xzkq-xp2w.json").body
      employee_hashes.each do |hash|
        employees << Employee.new(hash)
      end
      employees
    end
  end
end