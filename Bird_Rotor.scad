include <Bird_Config.scad>;

//////////////////////////////////////////////////////
// 7" Trolling Bird
// Rotor Assembly
//////////////////////////////////////////////////////

module rotor_hub(){

    difference(){

        cylinder(
            d=hub_diameter,
            h=hub_length,
            center=true);

        cylinder(
            d=shaft_diameter+fit,
            h=hub_length+2,
            center=true);

        rotor_blade_pockets();

    }

}

module rotor_blade_pocket(){

    translate([hub_diameter/2 - blade_pocket_depth/2, 0, 0])

    rotate([0, 0, -blade_sweep/2])

    rotate([blade_twist, 0, 0])

    cube([
        blade_pocket_depth,
        blade_width+fit,
        blade_thickness+fit
    ], center=true);

}

module rotor_blade_pockets(){

    for(i = [0 : blade_count-1]){

        rotate([0, 0, (360/blade_count)*i])
            rotor_blade_pocket();

    }

}

module rotor_blade(){

    translate([hub_diameter/2-blade_root_overlap, 0, 0])

    rotate([0, 0, -blade_sweep/2])

    rotate([blade_twist, 0, 0])

    translate([0, -blade_width/2, -blade_thickness/2])

    cube([blade_length, blade_width, blade_thickness], center=false);

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