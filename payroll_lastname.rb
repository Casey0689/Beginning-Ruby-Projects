############################################################
#
#  Name:         Casey Johnson
#  Date:         1/16/2017
#  Assignment:   Payroll
#  Class:        CIS - 282
#  Description:  Creat a pey check maker
#
############################################################

print "Employee Name is: "
name = gets.chomp

print "Number of hours worked this week: "
hours_worked = gets.to_f

print "Hourly pay rate: "
pay_rate = gets.to_f

print "Federal Tax withhgolding rate: "
fed_withholding_rate = gets.to_f

if fed_withholding_rate > 1
  fed_withholding_rate /= 100
end

print "State tax withholding rate: "
state_withholding_rate = gets.to_f

if state_withholding_rate > 1
  state_withholding_rate /= 100
end

gross_pay = (pay_rate * hours_worked)
fed_withhold = (fed_withholding_rate * gross_pay)
state_withhold = (state_withholding_rate * gross_pay)
total_deduction = (fed_withhold + state_withhold)
net_pay = (gross_pay - total_deduction)

puts "*" * 60
puts "*" + "Employee Name:  " + name
puts "*" + "Hours worked:   $" + format("%.2f", hours_worked).to_s
puts "*" + "Pay rate:       $" + format("%.2f", pay_rate).to_s
puts "*" + "Gross Pay:      $" + format("%.2f", gross_pay).to_s
puts "*" + "Deductions: "
puts "*" + "    Federal Withholding : $" + format("%.2f", fed_withhold).to_s
puts "*" + "    State Withholding   : $" + format("%.2f", state_withhold).to_s.to_s
puts "*" + "    Total Deductions    : $" + format("%.2f", total_deduction).to_s.to_s
puts "*" + "Net Pay:        $" + format("%.2f", net_pay).to_s.to_s

puts "*" * 60