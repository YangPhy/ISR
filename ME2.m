Print[Style["ME2: ", "Text", Bold], 
 Style["Amplitude square after phase space integration", 
  "Text"]]
Print["by Yang Ma (July 2020)"];
ME2ww=-(g^4*SW^4*(Sqrt[4*MW^2 - s]*Sqrt[s]*((-5 + 12*CW^2 - 8*CW^4)*MZ^4*s^3 - 
      4*MW^2*MZ^2*s^2*((19 - 46*CW^2 + 32*CW^4)*MZ^2 + s - 2*CW^2*s) + 
      48*MW^6*(2*(3 - 7*CW^2 + 4*CW^4)*MZ^4 + (-1 + 2*CW^2)*MZ^2*s) + 
      4*MW^4*s*(4*(30 - 61*CW^2 + 34*CW^4)*MZ^4 + 10*(-5 + 4*CW^2)*MZ^2*s + 
        15*s^2)) - 48*MW^4*(MZ^2 - s)*(s^2*(-MZ^2 + s) + 
      2*MW^4*(2*(-1 + CW^2)*MZ^2 + s) + 2*MW^2*s*((-3 + 4*CW^2)*MZ^2 + s))*
     ArcTan[(Sqrt[4*MW^2 - s]*Sqrt[s])/(2*MW^2 - s)]))/
 (48*(-1 + CW)^2*(1 + CW)^2*MW^4*Sqrt[4*MW^2 - s]*(MZ^2 - s)^2*s^(3/2));

ME2tt=(CA*g^4*(256*CW^8*MZ^4*(2*Mt^2 + s) - 64*CW^6*MZ^2*(2*Mt^2 + s)*
    (8*MZ^2 + 3*s) + 5*s^2*(7*Mt^2 + 17*s) - 
   4*CW^2*s*(Mt^2*(120*MZ^2 + s) + s*(60*MZ^2 + 41*s)) + 
   8*CW^4*(Mt^2*(64*MZ^4 + 108*MZ^2*s - 5*s^2) + 
     s*(32*MZ^4 + 54*MZ^2*s + 11*s^2)))*SW^4)/
 (216*(-1 + CW)^2*CW^4*(1 + CW)^2*(MZ^2 - s)^2*s);
 
 ME2zh=-((5 - 12*CW^2 + 8*CW^4)*g^4*MW^2*(2*MH^4 + 2*MZ^4 - 7*MZ^2*s - s^2 - 
    MH^2*(4*MZ^2 + s))*SW^4)/(48*(-1 + CW)^2*CW^6*(1 + CW)^2*MZ^2*
  (MH^2 - 2*MZ^2 + s)^2);

ME2zz=-((17 - 72*CW^2 + 120*CW^4 - 96*CW^6 + 32*CW^8)*g^4*SW^4*
   ((2*MZ^2 - s)*Sqrt[4*MZ^2 - s]*Sqrt[s] - (4*MZ^4 + s^2)*
     ArcTan[(Sqrt[4*MZ^2 - s]*Sqrt[s])/(2*MZ^2 - s)]))/
 (2*CW^4*(-1 + CW^2)^2*(2*MZ^2 - s)*Sqrt[4*MZ^2 - s]*Sqrt[s]);
