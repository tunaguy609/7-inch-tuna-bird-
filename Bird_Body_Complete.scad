include <Bird_Config.scad>;
include <Bird_Body.scad>;
include <Bird_Features.scad>;

//////////////////////////////////////////////////////
// 7" Trolling Bird
// Body Left Half - Complete with Features
//////////////////////////////////////////////////////

module body_left_complete(){

    difference(){

        // Base body structure
        difference(){
            body_left();
            shaft_tunnel();
            ballast();
        }

        // Subtract features (holes, pockets, sockets)
        insert_layout();
        alignment_socket(35,0);
        alignment_socket(75,0);
        shaft_bore();

    }

    // Add positive features (bosses, ribs, pins)
    body_features();

}

module body_right_complete(){

    mirror([0,1,0])
        body_left_complete();

}

//////////////////////////////////////////////////////
// EXPORT COMPLETE BODIES
//////////////////////////////////////////////////////

// Uncomment one at a time to export:

// Body Left Half - Complete
// body_left_complete();

// Body Right Half - Complete
// body_right_complete();