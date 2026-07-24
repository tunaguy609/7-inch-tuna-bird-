include <Bird_Config.scad>;

/////////////////////////////////////////////////////////
// INTERNAL STRUCTURE
/////////////////////////////////////////////////////////

boss_diameter = 10;
boss_core = 2.8;
boss_height = max_diameter - wall*2;

module screw_boss(x,y){

    translate([x,y,0])

    difference(){

        cylinder(
            d=boss_diameter,
            h=boss_height,
            center=true);

        cylinder(
            d=screw,
            h=boss_height+2,
            center=true);

    }

}

module insert_pocket(x,y){

    translate([x,y,boss_height/2-insert_length])

        cylinder(
            d=insert_OD+0.25,
            h=insert_length+0.3);

}

/////////////////////////////////////////////////////////
// Alignment Pins
/////////////////////////////////////////////////////////

module alignment_pin(x,y){

    translate([x,y,0])

        cylinder(
            d=pin_diameter,
            h=pin_length,
            center=true);

}

module alignment_socket(x,y){

    translate([x,y,0])

        cylinder(
            d=pin_diameter+fit,
            h=pin_length+1,
            center=true);

}

/////////////////////////////////////////////////////////
// Nose Bearing Pocket
/////////////////////////////////////////////////////////

module nose_bearing(){

    translate([0,0,0])

    rotate([0,90,0])

    cylinder(
        d=bearing_OD,
        h=bearing_depth);

}

/////////////////////////////////////////////////////////
// Shaft Bearing Bore
/////////////////////////////////////////////////////////

module shaft_bore(){

    translate([-5,0,0])

    rotate([0,90,0])

    cylinder(
        d=bearing_ID,
        h=20);

}

/////////////////////////////////////////////////////////
// Internal Reinforcing Ribs
/////////////////////////////////////////////////////////

module rib(x){

    translate([x,0,0])

    difference(){

        cylinder(
            d=max_diameter-wall*2,
            h=2,
            center=true);

        cylinder(
            d=20,
            h=3,
            center=true);

    }

}

/////////////////////////////////////////////////////////
// Rib Placement
/////////////////////////////////////////////////////////

module ribs(){

    rib(18);

    rib(42);

    rib(66);

    rib(90);

}

/////////////////////////////////////////////////////////
// Screw Locations
/////////////////////////////////////////////////////////

module screw_layout(){

    screw_boss(20,14);

    screw_boss(20,-14);

    screw_boss(55,18);

    screw_boss(55,-18);

    screw_boss(92,12);

    screw_boss(92,-12);

}

/////////////////////////////////////////////////////////
// Insert Locations
/////////////////////////////////////////////////////////

module insert_layout(){

    insert_pocket(20,14);

    insert_pocket(20,-14);

    insert_pocket(55,18);

    insert_pocket(55,-18);

    insert_pocket(92,12);

    insert_pocket(92,-12);

}

/////////////////////////////////////////////////////////
// Alignment Pin Locations
/////////////////////////////////////////////////////////

module pin_layout(){

    alignment_pin(35,0);

    alignment_pin(75,0);

}

/////////////////////////////////////////////////////////
// Assembly Features
/////////////////////////////////////////////////////////

module body_features(){

    ribs();

    screw_layout();

    pin_layout();

    nose_bearing();

}