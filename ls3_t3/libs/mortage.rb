print "Enter the mortage amount, please: "
total_sum = gets.to_i
print "Enter the mortage term in months, please: "
term = gets.to_i
print 'Ok. And what is the year interest rate? '
month_interest = gets.to_f/12/100
monthly_payment = month_interest*(1+month_interest)**term*total_sum/((1+month_interest)**term - 1)

puts "Monthly payment is %.2f" %monthly_payment
puts "%-16s| %-16s| %-16s| %-16s| %s" %['Time passed', 'Current debt', 'Monthly payment', 'Interest amount', 'Debt body payment']
for i in (1..term) do
    puts "%-16s| %-16.2f| %-16.2f| %-16.2f| %.2f" %["#{i/12}y.#{i%12}m.",total_sum,monthly_payment,total_sum*month_interest,monthly_payment-total_sum*month_interest]
    total_sum = total_sum - (monthly_payment-total_sum*month_interest)
end 
