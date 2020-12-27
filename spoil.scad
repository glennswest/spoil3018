
bspace = 40;

module bracket(){
   //%cube([50,30,1]);
    translate([5,10,0]) cylinder($fn=100,r=2.75,h=30);
    translate([5+bspace,10,0]) cylinder($fn=100,r=2.75,h=30);
    translate([5,10,-1]) cylinder($fn=5,r=4.25,h=10);
    translate([5+bspace,10,-1]) cylinder($fn=5,r=4.25,h=10);
    
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

//spoil();
