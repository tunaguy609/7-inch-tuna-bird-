include <Bird_Config.scad>;

//////////////////////////////////////////////////////
// 7" Trolling Bird
// Rotor Assembly
//////////////////////////////////////////////////////

module rotor_hub(){

    cylinder(
        d=bearing_OD,
        h=bearing_depth,
        center=true);

}

module rotor_blade(){

    // Single blade - will be rotated and arrayed

    translate([blade_span/2, 0, 0])

    rotate([blade_pitch, 0, 0])

    translate([0, -blade_width/2, 0])

    cube([blade_span, blade_width, blade_thickness], center=false);

}

module rotor_blades(){

    for(i = [0 : blade_count-1]){

        rotate([0, 0, (360/blade_count)*i])
            rotor_blade();

    }

}

module rotor_assembly(){

    union(){

        rotor_hub();

        rotor_blades();

    }

}

//////////////////////////////////////////////////////
// EXPORT ROTOR
//////////////////////////////////////////////////////

// rotor_assembly();