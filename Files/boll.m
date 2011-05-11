clear
aapl = hist_stock_data('05012010','05012011','AAPL');

[mid, uppr, lowr] = bollinger(aapl.Close);

grid on;
highlow(aapl.High, aapl.Low, aapl.Close, aapl.Open);
hold on;
plot(lowr,'r')
plot(uppr,'r')
xlabel('time');
ylabel('Price')
