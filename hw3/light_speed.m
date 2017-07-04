function [mins,miles] = light_speed(kms)
miles = kms/1.609;
secs = kms./(300000);
mins = secs/60;