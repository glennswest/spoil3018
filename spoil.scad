// Use t-track 19mmx9.5

bspace = 40;
inch = 25.4;
// 1/2 inch = 12.8
twidth = 19.1;
// 3/8 inch = 9.9.525
tdepth = 9.53;

module bracket(){
   //%cube([50,30,1]);
    translate([5,10,0]) cylinder($fn=100,r=2.75,h=30);
    translate([5+bspace,10,0]) cylinder($fn=100,r=2.75,h=30);
    translate([5,10,-1]) cylinder($fn=5,r=4.25,h=10);
    translate([5+bspace,10,-1]) cylinder($fn=5,r=4.25,h=10);
    
}

module ttrack()
{
     cube([300.1,twidth,tdepth]);
}    


module ubracket(){
   //%cube([50,30,1]);
    translate([5,15,0]) cylinder($fn=100,r=2.75,h=30);
    translate([5+bspace,15,0]) cylinder($fn=100,r=2.75,h=30);
    translate([5,15,-1]) cylinder($fn=5,r=4.25,h=10);
    translate([5+bspace,15,-1]) cylinder($fn=5,r=4.25,h=10);
}   

module spoil(){
    difference(){
        cube([300,180,19.30]);
        translate([130,84,0]) bracket();
        translate([50,14,0])  ubracket();
        translate([200,14,0]) ubracket();
        translate([50,180-34,0]) bracket();
        translate([200,180-34,0]) bracket();
    }
    
}

module spoil_ttrack(){
    difference(){
        translate([-1,-1,0]) cube([302,183,19.30]);
        translate([130,84,0]) bracket();
        translate([50,14,0])  ubracket();
        translate([200,14,0]) ubracket();
        translate([50,180-34,0]) bracket();
        translate([200,180-34,0]) bracket();
        translate([-.1,-.1,-.1]) ttrack();
        translate([-.1,54,-.1]) ttrack();
       // translate([-.1,70,-.1]) ttrack();
       // translate([-.1,105,-.1]) ttrack();
        translate([-.1,110,-.1]) ttrack();
        translate([-.1,180-twidth,-.1]) ttrack();
    }
    
}

//spoil_ttrack();
