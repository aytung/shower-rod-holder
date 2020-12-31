

main_cyl_h = 60;
main_semis_h = 17.5;
main_cyl_ext_r = 22.5;
main_cyl_int_r = 20;
screw_hole_catch_h = 3.5;
screw_hole_catch_off = 20;
screw_hole_catch_int_r = 2.5;
screw_hole_catch_ext_r = 5;

module extrusion_cut_hole() {
translate([0, 22.5, 12.5 + 40])
rotate([90,0,0])
linear_extrude(height=7.5)
circle(12.5);
}

module translate_up(z) {
    translate([0, 0, z]) children();
}

difference() {

union() {
// internal scaled cylinder
translate_up(screw_hole_catch_off + screw_hole_catch_h)
linear_extrude(height=45,center=false, scale=2.5)
difference() {
circle(5);
circle(2.5);
}

// main cylinder
linear_extrude(height=60, center=false, convexity=0, twist=0)
difference() {
circle(main_cyl_ext_r);
circle(main_cyl_int_r);
}

// upper circle
translate_up(60 + 7.5)
linear_extrude(height=10, center=false)
difference() {
circle(12.5);
circle(10);
}

// lower circle
translate_up(screw_hole_catch_off)
linear_extrude(height=screw_hole_catch_h, center=false)
difference() {
circle(5);
circle(2.5);
}

// hemisphere
difference() {
translate([0, 0, main_cyl_h - 1.25])
intersection() {
translate([0, 0, 1.25]) cylinder(h=17.5, r=main_cyl_ext_r);
difference() {
sphere(22.5347);
sphere(20.0347);
}
}
// top hole cut

translate([0, 0, 60 + 17.5 - 10])
linear_extrude(height=12)
circle(10);
}
}





extrusion_cut_hole();


}


