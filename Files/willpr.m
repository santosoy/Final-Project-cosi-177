w = willpctr(aapl.High, aapl.Low, aapl.Close);
d = datenum(aapl.Date);

bar1 = -80*ones(size(d));
bar2 = -20*ones(size(d));
subplot(2,1,1)
highlow(aapl.High, aapl.Low, aapl.Close, aapl.Open);
grid on;
subplot(2,1,2)
plot(d,w,d,bar1,'r',d,bar2,'r')
datetick('x',3)
grid on;
xlabel('time');
ylabel('price');
title('Williams %R')