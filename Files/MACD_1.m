% MACD - short time period (6 months)
IBM_s = hist_stock_data('01122010', '01052011', 'IBM');
% This gives us the data for the last 6 months and hence captures a much
% shorter time range
[mcd, nema] = macd(IBM_s.Close);
dates = datenum(IBM_s.Date);
subplot(2,1,1)
plot(dates, mcd)
hold on
plot(dates, nema, '--r')
dateaxis('x',6)
title('MACD - 6 months')
legend('MACD', 'Nine Day EMA')
xlabel('Date')
grid on
hold off


% MACD - long time period (2 years)
IBM_l = hist_stock_data('01052009', '01052011', 'IBM');
% This gives us the data for the last 2 years and hence captures a longer time range
[mcd, nema] = macd(IBM_l.Close);
dates = datenum(IBM_l.Date);
subplot(2,1,2)
plot(dates, mcd)
hold on
plot(dates, nema, '--r')
dateaxis('x',3)
legend('MACD', 'Nine Day EMA')
title('MACD - 2 year')
xlabel('Date')
grid on
hold off

