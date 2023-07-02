var R=6, r=1, a=8,yc = -118.2854,xc = 34.0206; 

var cos=Math.cos, sin=Math.sin, pi=Math.PI, nRev=12;

for(var t=0.0; t<(pi*nRev); t+=0.01){
  var x = (((R+r)*cos((r/R)*t) - a*cos((1+r/R)*t)) / 1000) + yc;
  var y = (((R+r)*sin((r/R)*t) - a*sin((1+r/R)*t)) / 1000) + xc;
  print(x+","+y+",0");
}