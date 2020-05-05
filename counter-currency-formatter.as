numDecimals = 2;
commas = true;
dollarSign = true;
beginCount = -1999;
endCount = 1999;
dur = 4;

t = time - inPoint;
s = linear (t, 0, dur, beginCount, endCount).toFixed(numDecimals);
 
prefix = "";
if (s[0] == "-"){
  prefix = "-";
  s = s.substr(1);
}
if(dollarSign) prefix += "$";
 
if (commas){
  decimals = "";
  if (numDecimals > 0){
    decimals = s.substr(-(numDecimals + 1));
    s = s.substr(0,s.length - (numDecimals + 1));
  }
  outStr = s.substr(-s.length, (s.length-1)%3 +1);
  for (i = Math.floor((s.length-1)/3); i > 0; i--){
    outStr += "," + s.substr(-i*3,3);
  }
  prefix + outStr + decimals;
}else{
  prefix + s;
}
