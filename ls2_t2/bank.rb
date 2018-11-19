print 'Введите под сколько процентов надо расчитать кредит: '
creditPercent = gets.to_f
print 'Введите сумму ипотечного кредита: '
moneyCred = gets.to_i
print 'Введите сумму ежемесячного платежа: '
moneyMonth = gets.to_i

puts
if moneyCred*(creditPercent/12/100) >= moneyMonth
   puts 'Слишком маленький ежемесячный платёж!'
else
    puts '----------------------------------------------'
    countOfManth = 0
    while moneyCred - (moneyMonth - moneyCred*(creditPercent/12/100)) > 0 do
        actualPercent = (moneyCred*(creditPercent/12/100)).round(2)
        mainCreditPay = (moneyMonth-actualPercent).round(2);
        countOfManth += 1
        puts '| ' + ((countOfManth) / 12).to_s + 'y. ' + ((countOfManth) % 12).to_s + 'm.' + ' | ' + moneyCred.to_s + ' | ' + actualPercent.to_s + ' | ' + moneyMonth.to_s + ' | ' + mainCreditPay.to_s + ' | '
        puts '-------------------------------------------------------------------------'
        moneyCred = (moneyCred - (moneyMonth - actualPercent)).round(2)
    end
    actualPercent = (moneyCred*(creditPercent/12/100)).round(2)
    mainCreditPay = (moneyMonth-actualPercent).round(2);
    countOfManth += 1
    puts '| ' + ((countOfManth) / 12).to_s + 'y. ' + ((countOfManth) % 12).to_s + 'm.' + ' | ' + moneyCred.to_s + ' | ' + actualPercent.to_s + ' | ' + mainCreditPay.to_s + ' | ' + 0.to_s + ' | '
    puts '-----------------------------------------------'
    puts 'Кредит будет выплачен за: ' + ((countOfManth) / 12).to_s + ' лет и ' + ((countOfManth) %  12).to_s + ' месяцев'
    
end