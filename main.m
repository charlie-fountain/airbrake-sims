[flight_data,time] = euler();

altitudes = flight_data(1).';
length = len(altitudes);

y = [flight_data(1).'; time];

plot(y)