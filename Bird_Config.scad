/////////////////////////////////////////////////////////
// 7" Spinning Trolling Bird
// Global Parameters
// Units = mm
/////////////////////////////////////////////////////////

$fn = 120;

//----------------------------
// Overall Dimensions
//----------------------------

overall_length = 177.8;
body_length    = 114.3;
nose_length    = 63.5;

max_diameter   = 50.8;
front_diameter = 43.688; // 1.72"
tail_diameter  = 7.112;  // 0.28"
nose_tip       = 8.0;
nose_cone_length = 17.78;       // 0.70"
nose_cone_base_diameter = 24.13; // 0.95"

//----------------------------
// Wall Thickness
//----------------------------

wall = 2.8;

//----------------------------
// Shaft
//----------------------------

shaft_diameter = 4.0;
bearing_diameter = 6.0;
shaft_shoulder_thickness = 5.0;

shaft_length = 150;

shaft_clearance = 0.10;

//----------------------------
// Hardware
//----------------------------

screw = 3.0;

insert_OD = 5.0;
insert_length = 4.0;

insert_depth = 5.2;

num_screws = 6;

//----------------------------
// Tow Eye
//----------------------------

eye_OD = 10;
eye_ID = 5;
eye_length = 8;

//----------------------------
// Ballast Cavity
//----------------------------

ballast_diameter = 18;
ballast_length = 60;

//----------------------------
// Rotor
//----------------------------

blade_count = 2;

hub_length = 11.43;        // 0.45"
hub_diameter = 26.67;      // 1.05"

blade_length = 31.75;      // 1.25"
blade_width = 20.83;       // 0.82"

blade_thickness = 3.56;    // 0.14"

blade_twist = 35;
blade_sweep = 60;

blade_pocket_depth = 4.0;
blade_root_overlap = 3.8;

// Legacy aliases used by nose blade geometry
blade_span = blade_length;
blade_pitch = blade_twist;

//----------------------------
// Nose Bearing
//----------------------------

bearing_OD = 12;

bearing_ID = 6.1;

bearing_depth = 10;

//----------------------------
// Alignment Pins
//----------------------------

pin_diameter = 3.0;

pin_length = 8;

//----------------------------
// Split Plane
//----------------------------

split = 0;

//----------------------------
// Clearances
//----------------------------

fit = 0.10;

//----------------------------
// Retaining Collar
//----------------------------

collar_length = 11.43;     // 0.45"
collar_od = 18.796;        // 0.74"
collar_id = 6.35;          // 0.25"
collar_chamfer = 0.762;    // 0.03"