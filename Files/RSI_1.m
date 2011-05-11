% RSI - short time period (6 months)
IBM_s = hist_stock_data('01122010', '01052011', 'IBM');
% This gives us the data for the last 6 months and hence captures a much
% shorter time range
x = rsindex(IBM_s.Close);
dates = datenum(IBM_s.Date);
for i = 1:length(x)
    a(i) = 30; %Lower boundary
    b(i) = 70; %Upper boundary
end
y = [x a' b'];
subplot(2,1,1)
plot(dates, y)
hold on
dateaxis('x',3)
title('RS Index - 6 months')
legend('RSI')
xlabel('Date')
hold off

% RSI - short time period (2 year)
IBM_l = hist_stock_data('01052009', '01052011', 'IBM');
% This gives us the data for the last 6 months and hence captures a much
% shorter time range
x = rsindex(IBM_l.Close);
dates = datenum(IBM_l.Date);
for i = 1:length(x)
    a(i) = 30; %Lower boundary
    b(i) = 70; %Upper boundary
end
y = [x a' b'];
subplot(2,1,2)
plot(dates, y)
hold on
dateaxis('x',12)
title('RS Index - 2 year')
legend('RSI')
xlabel('Date')
hold off