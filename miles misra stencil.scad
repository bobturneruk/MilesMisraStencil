//A stencil for marking up "Miles-Misra" agar plates
//OpenSCAD (http://www.openscad.org/) is required to
//generate .STL files from this script.

outer_diameter=85.5; //millimetres
inner_diameter=83; //millimetres
rotation=45; //degrees (try 60 for 6 sectors)

union(){
    difference(){
        cylinder(d=outer_diameter,h=.5,$fn=100);
        for (theta=[0:rotation:360])
            rotate(theta){
                cube([inner_diameter,1.5,5], center=true);
            }
    }
cylinder(d=10,h=0.5,$fn=50);
}
