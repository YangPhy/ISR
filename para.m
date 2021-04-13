Print[Style["para: ", "Text", Bold], 
 Style["A Mathematica package for inputting Standard Model parameters ", 
  "Text"]]
Print["by Yang Ma (March 2020)"];
Print["If you use para in your research, please cite"];
Print [Style[" \[Bullet] T. Han, Y. Ma, and K. Xie, Phys.Rev.D 103 (2021) 3, L031301, arXiv:2007.14300.","Text"]];


(* plot settings *)
SetOptions[{Plot, LogPlot, LogLogPlot, LogLinearPlot}, 
  AspectRatio -> 0.6, Frame -> True, ImageSize -> Large,
  LabelStyle -> {FontSize -> 22, FontFamily -> "Times", Black}, 
  FrameStyle -> Directive[Black, 22]];
SetOptions[{ListPlot, ListLogPlot, ListLogLogPlot, ListLogLinearPlot},
   AspectRatio -> 0.6, Frame -> True, ImageSize -> Large, 
  Joined -> True,
  LabelStyle -> {FontSize -> 22, FontFamily -> "Times", Black}, 
  FrameStyle -> Directive[Black, 22]];
RGB[r_, g_, b_] := RGBColor[r/255, g/255, b/255];
CMYK[c_, m_, y_, k_] := CMYKColor[c/255, m/255, y/255, k/255];
hexToRGB[hex_] := 
 RGBColor @@ (N[FromDigits[StringJoin[#], 12]/255] & /@ 
    Partition[Characters[hex], 2])
{c1, c2, c3, c4, c5, c6, c7, c8} = {RGB[228, 26, 28], 
   RGB[77, 175, 74], RGB[55, 126, 184], RGB[255, 127, 0], 
   RGB[152, 78, 163], Black, Blue, Magenta // Lighter};

(* tab manipulations *)
tabRatio[tab1_, tab2_] := 
  Table[{tab1[[n, 1]], 
    If[tab2[[n, 2]] == 0, 0, tab1[[n, 2]]/tab2[[n, 2]]]}, {n, 1, 
    tab1 // Length}];
tabSum2[tab1_, tab2_] := 
  Table[{tab1[[n, 1]], tab1[[n, 2]] + tab2[[n, 2]]}, {n, 1, 
    tab1 // Length}];
tabSum3[tab1_, tab2_, tab3_] := 
  Table[{tab1[[n, 1]], 
    tab1[[n, 2]] + tab2[[n, 2]] + tab3[[n, 2]]}, {n, 1, 
    tab1 // Length}];
tabAvg2[tab1_, tab2_] := 
  Table[{tab1[[n, 1]], (tab1[[n, 2]] + tab2[[n, 2]])/2}, {n, 1, 
    tab1 // Length}];
GeV2TeV[tab_] := 
  Table[{tab[[n, 1]]/1000, tab[[n, 2]]}, {n, 1, tab // Length}];
pb2fb[tab_] := 
  Table[{tab[[n, 1]], 1000 tab[[n, 2]]}, {n, 1, tab // Length}];
fb2pb[tab_] := 
  Table[{tab[[n, 1]], tab[[n, 2]]/1000}, {n, 1, tab // Length}];

(* SM parameters *)
SMpara1 = {CW -> MW/MZ, SW -> Sqrt[1 - MW^2/MZ^2], CA -> 3};
SMpara2 = {EL -> Sqrt[4 \[Pi] \[Alpha]E] , 
   MW -> Sqrt[
    MZ^2/2 + Sqrt[MZ^4/4 - (\[Alpha]E \[Pi] MZ^2)/(GF Sqrt[2])]]};
SMpara = {EL -> Sqrt[4 \[Pi] \[Alpha]E] , g -> EL/SW, CW -> MW/MZ, 
   SW -> Sqrt[1 - MW^2/MZ^2], 
   MW -> Sqrt[
    MZ^2/2 + Sqrt[MZ^4/4 - (\[Alpha]E \[Pi] MZ^2)/(GF Sqrt[2])]]};
SMnum = N[{\[Alpha]E -> 50000/6625349, GF -> 116639 10^-10, Mt -> 173,
     MA -> 0, MZ -> 91188 10^-3, MH -> 125, MM -> 105 10^-3, 
    ME -> 511 10^-6, GammaZ -> 24952 10^-4}, 50];
SMinput = 
  Join[{g -> EL/SW} /. SMpara1 /. SMpara2 /. SMnum, 
   SMpara1 /. SMpara2 /. SMnum, SMpara2 /. SMnum, SMnum];
