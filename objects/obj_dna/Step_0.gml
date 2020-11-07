/// @description If outside room, then wrap around screen, Disconnect trail and begin a new trail

var wrap = 0;
var border_width = 50;

if x < -border_width
   {
   x += room_width + border_width*2;
   wrap = 1;
   }

if x > room_width + border_width
   {
   x -= room_width + border_width*2;
   wrap = 1;
   }
   
if y < -border_width
   {
   y += room_height + border_width*2;
   wrap = 1;
   }

if y > room_height + border_width
   {
   y -= room_height + border_width*2;
   wrap = 1;
   }

if wrap 
   {
   trail.follow = -1;  //Tell the trail object that it no longer has an object to follow.
   alarm[0] = 1;       //A new trail object will be created after the object wraps around the screen.
   }


///Adjust object and trail color

hue = (hue + irandom(8)/image_xscale) mod 256

var c = make_colour_hsv(hue,255,255);

trail.trail_colour =  c
image_blend = merge_colour(c_white, c, .50)


