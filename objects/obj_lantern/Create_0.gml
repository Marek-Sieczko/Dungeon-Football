//Inserting random value to each lantern.

Color_Index = irandom_range(0, 4);

image_speed = 0;
image_index = Color_Index;

switch(Color_Index)
{
case 0: fake_light_ini(id, s_LightCutout1, 1, 1, c_red, 1); break;
case 1: fake_light_ini(id, s_LightCutout1, 2, 2, c_lime, 0.6); break;
case 2: fake_light_ini(id, s_LightCutout1, 3, 3, c_blue, 0.9); break;
case 3: fake_light_ini(id, s_LightCutout1, 1.5, 2, c_yellow, 1); break;
case 4: fake_light_ini(id, s_LightCutout1, 4, 0.25, c_purple, 1); break;
}
 


