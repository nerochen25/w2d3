class Employee
  attr_reader :name, :title, :salary, :boss

  def initialize(name, title, salary, boss = nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    #manager whose name is @boss should receive self into an array of employees

  end



  def bonus(multiplier)
    bonus = @salary * multiplier
  end

  def boss=(boss)
    @boss = boss
    boss.add_emp(self) unless boss == nil
  end



end


class Manager < Employee
  attr_accessor :array_emp
  def intialize(name, title, salary, boss = nil)
    super
    @array_emp = []
  end

  def add_emp(employee)
    @array_emp << employee
  end

  def bonus(multiplier)
    total = 0
    @array_emp.each {|employee| total += employee.salary} # sum all employee salaries
    bonus = total_emp_salary * multiplier
  end

end


# if $PROGRAM_NAME == __FILE__
  Ned = Manager.new("Ned", "Founder", 1000000, nil)
  Darren = Manager.new("Darren", "TA Manager", 78000, Ned)
  Shawna = Employee.new("Shawna", "TA", 12000, Darren)
  David = Employee.new("David", "TA", 10000, Darren)
#
#   ned.bonus(5) # => 500_000
#   darren.bonus(4) # => 88_000
#   david.bonus(3) # => 30_000
# end
