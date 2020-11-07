var __b__;
__b__ = action_if_dice(4);
if __b__
{
{
action_create_object(obj_ball_basic, x, y);
}
}
else
{
{
__b__ = action_if_dice(3);
if __b__
{
{
action_create_object(obj_ship_blue, x, y);
}
}
else
{
{
__b__ = action_if_dice(2);
if __b__
{
{
action_create_object(obj_ball_rainbow, x, y);
}
}
else
{
{
action_create_object(obj_ball_rainbow_rotated, x, y);
}
}
}
}
}
}
