//A stencil for marking up "Miles-Misra" agar plates
//OpenSCAD (http://www.openscad.org/) is required to
//generate .STL files from this script.

outer_diameter=85; //millimetres
thickness=1; //millimetres
number_of_sectors=6;

module cutline(rotation){
    rotate(rotation){
        translate([5,-.75,0]){
                cube([35,1.5,10]);
            }
        translate([5,0,0]){
            cylinder(d=1.5,h=10,$fn=100);    
        }
        translate([40,0,0]){
            cylinder(d=1.5,h=10,$fn=100);
        }
        }
}

union(){
    difference(){
        cylinder(d=outer_diameter,h=thickness,$fn=100);
        for (theta=[0:360/number_of_sectors:360])
            cutline(theta);
        cylinder(d=1.5,h=10,$fn=100);
    }
}
