include <Bird_Config.scad>;

//////////////////////////////////////////////////////
// 7" Trolling Bird
// Body Modules
//////////////////////////////////////////////////////

module body_profile(){

    hull(){

        translate([0,0,0])
                sphere(d=front_diameter);

        translate([body_length*0.25,0,0])
                sphere(d=(front_diameter+max_diameter)/2);

        translate([body_length*0.5,0,0])
                sphere(d=max_diameter);

        translate([body_length*0.75,0,0])
                sphere(d=(max_diameter+tail_diameter)/2);

        translate([body_length,0,0])
                sphere(d=tail_diameter);
    }

}

module hollow_body(){

    difference(){

        body_profile();

        translate([0,0,0])
        scale([
            (max_diameter-wall*2)/max_diameter,
            (max_diameter-wall*2)/max_diameter,
            (max_diameter-wall*2)/max_diameter
        ])
        body_profile();

    }

}

module shaft_tunnel(){

    translate([-10,0,0])

        rotate([0,90,0])

        cylinder(
            d=shaft_diameter+shaft_clearance,
            h=body_length+20,
            center=false);

}

module ballast(){

    translate([35,0,0])

    rotate([0,90,0])

    cylinder(
        d=ballast_diameter,
        h=ballast_length,
        center=false);

}

module rear_eye(){

    translate([body_length+eye_length/2,0,0])

    rotate([0,90,0])

    difference(){

        cylinder(
            d=eye_OD,
            h=eye_length,
            center=true);

        cylinder(
            d=eye_ID,
            h=eye_length+2,
            center=true);

    }

}

module body_left(){

    intersection(){

        union(){

            hollow_body();

            rear_eye();

        }

        translate([-20,-100,-100])

        cube([body_length+80,100,200]);

    }

}

module body_right(){

    mirror([0,1,0])
        body_left();

}

//////////////////////////////////////////////////////
// EXPORT BODIES
//////////////////////////////////////////////////////

// Uncomment one at a time to export:

// Body Left Half
// difference(){
//     body_left();
//     shaft_tunnel();
//     ballast();
// }

// Body Right Half
// difference(){
//     body_right();
//     shaft_tunnel();
//     ballast();
// }