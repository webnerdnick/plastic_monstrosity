include<constants.scad>;
use<vslot.scad>;

// diameter of the tube (mm)
tubeDiameter = (2.197*25.4)*0.95; 

// hole size of the bearing (mm)
bearingHoleDiameter = 8;

// bearing diameter (mm)
bearingDiameter = 22;

// bearing width (mm)
bearingWidth = 7;

// bearing collar thickness (mm)
bearingCollarThickness = 2;

// minimum thickness of the walls (mm)
wallThickness = 14;

// minimum thickness of the walls (mm)
wallHeight = 60;

// the space between the bearing and the wall (mm)
tolerance = 2;

// the space between the tube and the wall (mm)
tubeTolerance = 2;

// determines beefiness of edge extensions
beefiness = 7;//9;

vslotScrewDiameter = 5;

vslotScrewHeadDiameter = 10;

vslotWallWidth=6;

vslotScrewOffset = 1;

module Outer() {
translate([bearingWidth/2,tubeDiameter/2+bearingDiameter/2,0])
    rotate([0,90,0]) union() {
        hull() {
                cylinder(r=bearingHoleDiameter/2+bearingCollarThickness,h=0.01,$fn=90);
                translate([0,0,tolerance])
                    cylinder(r=bearingHoleDiameter/2+bearingCollarThickness+tolerance,h=0.01,$fn=90);
        }
        translate([-bearingDiameter/2,-bearingDiameter/2-wallThickness,tolerance])
            cube([bearingDiameter+wallHeight,bearingDiameter+wallThickness+2*tolerance,wallThickness]);
        hull() {
                translate([0,0,2*tolerance+wallThickness])
                    cylinder(r=bearingHoleDiameter/2+bearingCollarThickness,h=0.01,$fn=90);
                translate([0,0,tolerance+wallThickness])
                    cylinder(r=bearingHoleDiameter/2+bearingCollarThickness+tolerance,h=0.01,$fn=90);
        }
    }
}

module Inner() {
    translate([bearingWidth/2,tubeDiameter/2+bearingDiameter/2,0])
        rotate([0,90,0]) 
            cylinder(r=bearingHoleDiameter/2,h=100, $fn=90); // arbitrary large value for hole length
}

module Bearing() {
    translate([0,tubeDiameter/2+bearingDiameter/2,0])
        rotate([0,90,0]) color("red", 0.5)
            cylinder(r=bearingDiameter/2,h=bearingWidth, center=true, $fn=90); 
}

module Tube() {
    color("green", 0.5)
        cylinder(r=tubeDiameter/2,h=500, center=true, $fn=90); 
}

testFit = true;

module Roller()
{
    for (m=[[0,0,0],[1,0,0]]) mirror(m) {
        if (testFit) {
            Bearing();
            rotate([0,0,-120]) Bearing();
            Tube();
        }

        difference() {
            union() {
                Outer();
                rotate([0,0,-120]) mirror([1,0,0]) Outer();
                translate([sin(60)*(tubeDiameter/2-wallThickness/2),cos(60)*(tubeDiameter/2-wallThickness/2),-bearingDiameter/2-wallHeight]) {
                    hull() {
                        translate([0,tubeDiameter/2+beefiness-wallThickness,0])
                            cylinder(r=0.01,h=bearingDiameter+wallHeight, $fn=90);
                        rotate([0,0,-120]) {
                            translate([0,tubeDiameter/2+beefiness-wallThickness,0]) 
                                cylinder(r=0.01,h=bearingDiameter+wallHeight, $fn=90);
                        }
                        cylinder(r=0.01,h=bearingDiameter+wallHeight, $fn=90);
                    }
                }
                translate([-wallThickness-tolerance-bearingWidth/2,tubeDiameter/2+bearingDiameter+tolerance,-(bearingDiameter+2*wallHeight)/2])
                    cube([2*wallThickness+2*tolerance+bearingWidth,wallThickness,bearingDiameter+wallHeight]);
            }
            cylinder(r=tubeDiameter/2+tubeTolerance,h=bearingDiameter+2*wallThickness, center=true, $fn=90);
            Inner();
            rotate([0,0,-120]) mirror([1,0,0]) Inner();
        }
    }
}

Roller();
translate([0,0,-2*wallHeight - 1/2*bearingDiameter])
    rotate([0,180,0])
        Roller();

vslotHeight = 50;//2*wallThickness+2*tolerance+bearingWidth-vslotWallWidth;
screwOffsets = [vslotWallWidth+vslotScrewHeadDiameter/2, vslotHeight-(vslotWallWidth+vslotScrewHeadDiameter/2)];
translate([-(2*wallThickness+2*tolerance+bearingWidth)/2+vslotWallWidth,tubeDiameter/2+bearingDiameter+tubeTolerance+wallThickness,bearingDiameter/2-vslotWallWidth]) {
    difference() {
        translate([-vslotWallWidth,0,-2*sectionWidth-vslotWallWidth])
            cube([vslotHeight+vslotWallWidth,4*sectionWidth+2*vslotWallWidth,2*sectionWidth+2*vslotWallWidth]);
        translate([0,vslotWallWidth,0])
            rotate([0,90,0])
                drawVslotExtrusion(
                        vslotHeight,
                        sectionCountWidth=2, 
                        sectionCountDepth=4, 
                        topIndent=true, 
                        rightIndent=true, 
                        leftIndent=true, 
                        bottomIndent=true, 
                        oversize=0.4,
                        screwOffset=5,
                        leftScrewPoints = screwOffsets,
                        rightScrewPoints = screwOffsets,
                        //topScrewPoints = screwOffsets
                        bottomScrewPoints = screwOffsets,
                        screwHeight=vslotWallWidth+tolerance,
                        backScrewPoints = [profileSize/2, profileSize*3/2,profileSize*5/2,profileSize*7/2]
                );
    }
}