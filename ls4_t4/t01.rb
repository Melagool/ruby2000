require 'date'
current_time = DateTime.now

year_start = current_time.strftime  "%Y"
manth_start = current_time.strftime "%m"
print "Введите год окончания платежа депазита: "
year_end = gets.to_i
print "Введите месяц окончания платежа депазита: "
manth_end = gets.to_i
print "Введите сумму ежемесячного пополнения депозита: "
deposit_pay = gets.to_i

manth_cnt = (year_end.to_i - year_start.to_i)*12 + (manth_end.to_i - manth_start.to_i)
if manth_cnt < 1
   puts "Дата окончания платежа должна быть больше текущей даты!" 
elsif deposit_pay <= 0
   puts "Значение платежа должна быть больше 0!" 
else
    deposit_sum = 0
    while manth_cnt > 0
        deposit_sum += deposit_pay 
        deposit_sum += deposit_sum*0.07/12
        manth_cnt -= 1
    end
    print "На дату " + manth_end.to_s + "." + year_end.to_s + " сумма накоплений составит: " + (deposit_sum.round(2)).to_s
end
