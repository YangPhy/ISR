(* ***
 fisr: A Mathematica package for QED ISR structure function

 First version: Yang Ma and Yongcheng Wu (Apr. 2021)

References:

   M. Cacciari et al, 1992 EPL 17 123
   "QED Structure Functions: A Systematic Approach"

*** *)

(* ************************************************************ *)

Print[Style["fisr: ", "Text", Bold], 
 Style["A Mathematica package for QED ISR structure function ", 
  "Text"]]
Print["by Yang Ma and Yongcheng Wu (April 2021)"];
Print["If you use fisr in your research, please cite"];
Print [Style[" \[Bullet] T. Han, Y. Ma, and K. Xie, Phys.Rev.D 103 (2021) 3, L031301, arXiv:2007.14300.","Text"]];


(* ************************************************************ *)
(* ************************************************************ *)

fisr0[x_, Q_, M_] := 
 Module[{L = Log[Q^2/M^2], \[Gamma]E = 577/1000, isr\[Eta], f0, f1, 
   f2, f31, f32}, isr\[Eta] = (2 \[Alpha])/\[Pi] L; 
  f0 = Exp[1/2 isr\[Eta] (3/4 - \[Gamma]E)]/
    Gamma[1 + 1/2 isr\[Eta]] 1/2 isr\[Eta] (1 - x)^(
    1/2 isr\[Eta] - 1);
  f0]

fisr1[x_, Q_, M_] := 
 Module[{L = Log[Q^2/M^2], \[Gamma]E = 577/1000, isr\[Eta], f0, f1, 
   f2, f31, f32}, isr\[Eta] = (2 \[Alpha])/\[Pi] L; 
  f0 = Exp[1/2 isr\[Eta] (3/4 - \[Gamma]E)]/
    Gamma[1 + 1/2 isr\[Eta]] 1/2 isr\[Eta] (1 - x)^(
    1/2 isr\[Eta] - 1); f1 = 1 + x; 
  f0 - 1/4 isr\[Eta] f1]
  
fisr2[x_, Q_, M_] := 
 Module[{L = Log[Q^2/M^2], \[Gamma]E = 577/1000, isr\[Eta], f0, f1, 
   f2, f31, f32}, isr\[Eta] = (2 \[Alpha])/\[Pi] L; 
  f0 = Exp[1/2 isr\[Eta] (3/4 - \[Gamma]E)]/
    Gamma[1 + 1/2 isr\[Eta]] 1/2 isr\[Eta] (1 - x)^(
    1/2 isr\[Eta] - 1); f1 = 1 + x; 
  f2 = -4 (1 + x) Log[1 - x] + 3 (1 + x) Log[x] - 4  Log[x]/(1 - x) - 
    5 - x;f0 - 1/4 isr\[Eta] f1 + 1/(4^2 2!) isr\[Eta]^2 f2]
  
fisr[x_, Q_, M_] := 
 Module[{L = Log[Q^2/M^2], \[Gamma]E = 577/1000, isr\[Eta], f0, f1, 
   f2, f31, f32}, isr\[Eta] = (2 \[Alpha])/\[Pi] L; 
  f0 = Exp[1/2 isr\[Eta] (3/4 - \[Gamma]E)]/
    Gamma[1 + 1/2 isr\[Eta]] 1/2 isr\[Eta] (1 - x)^(
    1/2 isr\[Eta] - 1); f1 = 1 + x; 
  f2 = -4 (1 + x) Log[1 - x] + 3 (1 + x) Log[x] - 4  Log[x]/(1 - x) - 
    5 - x; f31 = (1 + x) (18 Zeta[2] - 6 PolyLog[2, x] - 
      12 (Log[1 - x])^2 ); 
  f32 = 1/(1 - 
     x) (-(3/2) (1 + 8 x + 3 x^2) Log[x] - 
      6 (x + 5) (1 - x) Log[1 - x] - 12 (1 + x^2) Log[x] Log[1 - x] + 
      1/2 (1 + 7 x^2) (Log[x])^2 - 1/4 (39 - 24 x - 15 x^2)); 
  f0 - 1/4 isr\[Eta] f1 + 1/(4^2 2!) isr\[Eta]^2 f2 + 
   1/(4^3 3!) isr\[Eta]^3 (f31 + f32)]
   
gisr[x_, Q_, M_] := 
 Module[{L = Log[Q^2/M^2], \[Gamma]E = 577/1000, isr\[Eta], f0, f1, 
   f2, f31, f32, \[Beta]}, 
  isr\[Eta] = ((2 \[Alpha]) L)/\[Pi]; \[Beta] = (\[Alpha] L)/\[Pi]; 
  f0 = 1/2 (1 + (3 \[Beta])/4 - 1/96 (8 \[Pi]^2 - 27) \[Beta]^2 - 
      1/384 (-27 + 24 \[Pi]^2 + 128 Zeta[3]) \[Beta]^3) isr\[Eta] (1 -
       x)^(isr\[Eta]/2 - 1); f1 = 1 + x; 
  f2 = -4 (1 + x) Log[1 - x] + 3 (1 + x) Log[x] - (4 Log[x])/(
    1 - x) - 5 - x; 
  f31 = (1 + x) (18 Zeta[2] - 6 PolyLog[2, x] - 12 Log[1 - x]^2); 
  f32 = (-(3/2) (1 + 8 x + 3 x^2) Log[x] - 
    6 (x + 5) (1 - x) Log[1 - x] - 12 (1 + x^2) Log[x] Log[1 - x] + 
    1/2 (1 + 7 x^2) Log[x]^2 - 1/4 (39 - 24 x - 15 x^2))/(1 - x); 
  f0 - (isr\[Eta] f1)/4 + (isr\[Eta]^2 f2)/(4^2 2!) + (
   isr\[Eta]^3 (f31 + f32))/(4^3 3!)]

   
   
