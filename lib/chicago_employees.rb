require 'unirest'

require "chicago_employees/version"
require "chicago_employees/employee"

module ChicagoEmployees
  def self.all
    employee_hashes = Unirest.get("http://data.cityofchicago.org/resource/xzkq-xp2w.json").body
    generate_employees(employee_hashes)
  end

  def self.where(hash)
    url = "http://data.cityofchicago.org/resource/xzkq-xp2w.json"
    url += "?#{hash.keys.first.to_s}=#{hash.values.first}"
    employee_hashes = Unirest.get(url).body
    generate_employees(employee_hashes)
  end

  def self.generate_employees(array)
    employees = []
    array.each do |hash|
      employees << Employee.new(hash)
    end
    employees
  end
end
