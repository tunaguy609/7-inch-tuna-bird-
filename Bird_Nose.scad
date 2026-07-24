include <Bird_Config.scad>;

/////////////////////////////////////////////////////////
// LEFT SPINNING NOSE
/////////////////////////////////////////////////////////

module nose_profile(){

    hull(){

        // Tip
        translate([0,0,0])
            sphere(d = nose_tip);

        // Mid section
        translate([18,0,0])
            sphere(d = 30);

        // Rear
        translate([nose_length,0,0])
            sphere(d = max_diameter);

    }

}

/////////////////////////////////////////////////////////
// Hollow Shell
/////////////////////////////////////////////////////////

module nose_shell(){

    difference(){

        nose_profile();

        translate([0,0,0])

        scale([
            (max_diameter-wall*2)/max_diameter,
            (max_diameter-wall*2)/max_diameter,
            (max_diameter-wall*2)/max_diameter
        ])

        nose_profile();

    }

}

/////////////////////////////////////////////////////////
// Bearing Pocket
/////////////////////////////////////////////////////////

module bearing_pocket(){

    translate([nose_length-12,0,0])

    rotate([0,90,0])

    cylinder(
        d=bearing_OD,
        h=12,
        center=false);

}

/////////////////////////////////////////////////////////
// Shaft Bore
/////////////////////////////////////////////////////////

module shaft_bore(){

    translate([-2,0,0])

    rotate([0,90,0])

    cylinder(
        d=shaft_diameter+fit,
        h=nose_length+6);

}

/////////////////////////////////////////////////////////
// Rotor Blade
/////////////////////////////////////////////////////////

module blade(){

    translate([28,0,0])

    rotate([0,-18,25])

    linear_extrude(height=blade_thickness)

    polygon([
        [0,0],
        [blade_span,-6],
        [blade_span,-18],
        [22,-30],
        [0,-18]
    ]);

}

/////////////////////////////////////////////////////////
// Nose Half Modules
/////////////////////////////////////////////////////////

module nose_left(){

    intersection(){

        union(){

            nose_shell();

            blade();

        }

        translate([-20,-100,-100])

            cube([120,100,200]);

    }

}

module nose_right(){

    mirror([0,1,0])
        nose_left();

}

/////////////////////////////////////////////////////////
// EXPORT NOSES
/////////////////////////////////////////////////////////

// Uncomment one at a time to export:

// Nose Left Half
// difference(){
//     nose_left();
//     bearing_pocket();
//     shaft_bore();
// }

// Nose Right Half
// difference(){
//     nose_right();
//     bearing_pocket();
//     shaft_bore();
// }