model lab05

parameter Real a = 0.23; // коэффициент естественной смертности хищников
parameter Real b = 0.43; // коэффициент естественного прироста жертв
parameter Real c = 0.053; // коэффициент увеличения числа хищников
parameter Real d = 0.033; // коэффициент смертности жертв

parameter Real x0 = 8.0;// начальное значение x 
parameter Real y0 = 14.0;// начальное значение y 

//parameter Real x0 = 0.43/0.033;// стационарное состояние хищников 
//parameter Real y0 = 0.23/0.053;// стационарное состояние жертв 

Real x(start=x0);
Real y(start=y0);

equation

der(x) = -a*x + c*x*y;
der(y) = b*y - d*x*y;

end lab05;
