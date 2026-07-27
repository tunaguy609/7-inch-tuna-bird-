include <Bird_Config.scad>;

//////////////////////////////////////////////////////
// 7" Trolling Bird
// Shaft Assembly
//////////////////////////////////////////////////////

module shaft(){

    // Main shaft cylinder

    cylinder(
        d=shaft_diameter,
        h=shaft_length,
        center=false);

}

module shaft_with_bearing_seat(){

    union(){

        // Main shaft
        shaft();

        // Bearing seat at front
        translate([0, 0, shaft_length-shaft_shoulder_thickness])

        cylinder(
            d=bearing_diameter,
            h=shaft_shoulder_thickness,
            center=false);

    }

}

//////////////////////////////////////////////////////
// EXPORT SHAFT
//////////////////////////////////////////////////////

// shaft_with_bearing_seat();