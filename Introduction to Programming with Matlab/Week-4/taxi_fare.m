function total_fare = taxi_fare(dist,time)
    km = ceil(dist), min = ceil(time);
    firstkm_fare = 5;
    restkm_fare = (km-1)*2;
    wait_fare = min*.25;
    total_fare = firstkm_fare + restkm_fare + wait_fare;
end
