action_set_relative(0);
var __b__;
__b__ = action_if_dice(10);
if __b__
{
{
turn = random(8) - 4;
}
}
{
action_set_relative(1);
direction += turn;
action_set_relative(0);
}
image_angle = direction;
action_set_relative(0);
