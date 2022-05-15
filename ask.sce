clc
clear 
close 
Ac=10; // Amplitude of carrier
fc=0.1; // Normalized frequency of carrier signal
Am=2; // Amplitude of modulating signal
fm=0.01; // Normalized frequency of modulating signal
j=0;
x_min=0;
step=0.01;
x_max=300;
x_axis=[x_min:step:x_max];

    c_t = Ac*cos(2*%pi*fc*x_axis); // Carrier signal
    m_t= Am*cos(2*%pi*fm*x_axis); // Modulating signal
    b_t=(sign(m_t)+1)/2; // Binary unipolar modulating signal
    s_t=b_t.*c_t; // ASK signal

subplot(4,1,1)
plot2d(x_axis,m_t,3)
xtitle('Modulating Signal','t----->','y----->')
a=gca()
a.x_location="origin"
a.y_location="origin"

subplot(4,1,2)
plot2d(x_axis,c_t,5)
xtitle('Carrier Signal','t----->','y----->')
a=gca()
a.x_location="origin"
a.y_location="origin"

subplot(4,1,3)
plot2d(x_axis,b_t,2)
xtitle('Binary polar modulating Signal','t----->','y----->')
a=gca()
a.x_location="origin"
a.y_location="origin"

subplot(4,1,4)
plot2d(x_axis,s_t,6)
xtitle('ASK Signal','t----->','y----->')
a=gca()
a.x_location="origin"
a.y_location="origin"
