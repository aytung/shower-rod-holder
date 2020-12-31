difference() {
union() {
linear_extrude(height=60, center=false, convexity=0, twist=0)
difference() {
circle(22.5);
circle(20);
}
translate([0, 0, 50 + 17.5])
linear_extrude(height=10, center=false)
difference() {
circle(12.5);
circle(10);
}

translate([0,0,20])
linear_extrude(height=3.5, center=false, convexity=0, twist=0) 
difference() {
circle(5);
circle(2.5);
}

difference() {
translate([0, 0, 60 - 1.25])
intersection() {
translate([0, 0, 1.25]) cylinder(h=17.5, r=22.5);
difference() {
sphere(22.5347);
sphere(20.0347);
}
}

translate([0, 0, 60 + 17.5 - 10])
linear_extrude(height=12)
circle(10);
}

translate([0, 0, 20 + 3.5])
linear_extrude(height=45,center=false, scale=2.5)
difference() {
circle(5);
circle(2.5);
}

}



translate([0, 22.5, 12.5 + 40])
rotate([90,0,0])
linear_extrude(height=7.5)
circle(12.5);
}



