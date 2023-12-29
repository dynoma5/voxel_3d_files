//Box Y = 9.5 inch
//Box Z = 12 inch
//Box X = 6 inch

$fn = 80;
//Dimensions are in mm

//Front/Back Panel
frontWidth = 152.4;
//Side Panel
sideWidth = 304.8;
//Top/Bottom Panel
topWidth = frontWidth;
topLength = sideWidth;

boxHeight = 241.3;
boxThickness = 12.7;

//subWoofer Dimensions
wooferDiameter = 122;
wooferX = sideWidth/2;
wooferY = 101.6;
wooferScrewDiameter = 2.5;
wooferScrewX = 51.75;
wooferScrewY = 51.75;

//Terminal Hole Dimensions
terminalDiameter = 5.5;
terminalY = (frontWidth)/2;
terminal1X =(sideWidth)/2 + 15;
terminal2X = (sideWidth)/2 - 15;

//port Dimensions
portDiameter = 67;
portX = (frontWidth)/2;
portY = boxHeight -57.15;

//Connection Joints/Grooves
grooveThickness = 6;
grooveDepth = 6;
connectThickness = 4.5;
connectDepth = 4.5;
// difference(){
// union(){
//     difference(){
//     //Front Panel
//     linear_extrude(boxHeight)
//     square([frontWidth, boxThickness]);

//     translate([portX, boxThickness, portY])
//     rotate([90,0, 0])
//     linear_extrude(boxThickness)
//     circle(d=portDiameter);     
//     };

//     //Side Panel
//     translate([0, sideWidth-boxThickness, 0])
//     rotate([90,0,0])
//     linear_extrude(sideWidth-boxThickness)
//     square([boxThickness, boxHeight]);

//     //Other Side Panel

//     difference(){
//         translate([frontWidth - boxThickness, sideWidth-boxThickness, 0])
//         rotate([90,0,0])
//         linear_extrude(sideWidth-boxThickness)
//         square([boxThickness, boxHeight]);
//         //Subwoofer position
//         translate([frontWidth - boxThickness,wooferX, wooferY ])
//         rotate([0,90,0])
//         linear_extrude(boxThickness)
//         circle(d = wooferDiameter);
        
//         //subWoofer Screws
//         translate([frontWidth - boxThickness, wooferX - wooferScrewX, wooferY - wooferScrewY])
//         rotate([0,90,0])
//         linear_extrude(boxThickness)
//         circle(d=wooferScrewDiameter);
        
//         translate([frontWidth - boxThickness, wooferX + wooferScrewX, wooferY - wooferScrewY])
//         rotate([0,90,0])
//         linear_extrude(boxThickness)
//         circle(d=wooferScrewDiameter);

//         translate([frontWidth - boxThickness, wooferX - wooferScrewX, wooferY + wooferScrewY])
//         rotate([0,90,0])
//         linear_extrude(boxThickness)
//         circle(d=wooferScrewDiameter);

//         translate([frontWidth - boxThickness, wooferX + wooferScrewX, wooferY + wooferScrewY])
//         rotate([0,90,0])
//         linear_extrude(boxThickness)
//         circle(d=wooferScrewDiameter);

//     }
//     //Bottom Panel
//     linear_extrude(boxThickness)
//     square([frontWidth, sideWidth-boxThickness]);
    
//     //Top Panel
//     difference(){
//     translate([0,0, boxHeight - boxThickness])
//     linear_extrude(boxThickness)
//     square([frontWidth, sideWidth-boxThickness]);
    
//     //Terminal holes
//     translate([terminalY, terminal1X, boxHeight- boxThickness])
//     linear_extrude(boxThickness)
//     circle(d = terminalDiameter);
//     translate([terminalY, terminal2X, boxHeight- boxThickness])
//     linear_extrude(boxThickness)
//     circle(d = terminalDiameter);
//     }

// }

// //Add grooves to box
// translate([frontWidth/2,sideWidth - boxThickness, grooveThickness/2])
// linear_extrude(grooveDepth)
// square([frontWidth - boxThickness, grooveThickness], center = true);

// translate([frontWidth/2,sideWidth - boxThickness,boxHeight - grooveThickness/2 - boxThickness/2])
// linear_extrude(grooveDepth)
// square([frontWidth - boxThickness, grooveThickness], center = true);

// translate([boxThickness/2, sideWidth - boxThickness, grooveThickness/2])
// linear_extrude(boxHeight - boxThickness/2)
// square([grooveThickness, grooveThickness], center = true);

// translate([frontWidth - boxThickness/2, sideWidth - boxThickness, grooveThickness/2])
// linear_extrude(boxHeight - boxThickness/2)
// square([grooveThickness, grooveThickness], center = true);
// }

    //Back Panel
translate([0, (sideWidth),0])
linear_extrude(boxHeight)
square([frontWidth, boxThickness]);

// //Add grooves to box
translate([frontWidth/2,sideWidth, grooveThickness/2])
linear_extrude(connectDepth)
square([frontWidth - boxThickness, connectThickness], center = true);

translate([frontWidth/2,sideWidth,boxHeight - grooveThickness/2 - boxThickness/2])
linear_extrude(connectDepth)
square([frontWidth - boxThickness, connectThickness], center = true);

translate([boxThickness/2, sideWidth, grooveThickness/2])
linear_extrude(boxHeight - boxThickness/2 - 1.5)
square([connectThickness, connectThickness], center = true);

translate([frontWidth - boxThickness/2, sideWidth, grooveThickness/2])
linear_extrude(boxHeight - boxThickness/2 - 1.5)
square([connectThickness, connectThickness], center = true);

