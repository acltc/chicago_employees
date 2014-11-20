require 'unirest'

require "chicago_employees/version"
require "chicago_employees/employee"

module ChicagoEmployees
  def self.all
    employees = []
    employee_hashes = Unirest.get("http://data.cityofchicago.org/resource/xzkq-xp2w.json").body
    employee_hashes.each do |hash|
      employees << Employee.new(hash)
    end
    employees
  end

  def self.where(hash)
    employees = []
    url = "http://data.cityofchicago.org/resource/xzkq-xp2w.json"
    url += "?#{hash.keys.first.to_s}=#{hash.values.first}"
    employee_hashes = Unirest.get(url).body
    employee_hashes.each do |hash|
      employees << Employee.new(hash)
    end
    employees
  end
end
