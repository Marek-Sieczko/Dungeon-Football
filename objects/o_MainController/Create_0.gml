/// @description Set up data

// Set random data seed for play session
randomize();

// Create delt alarm system
create_delta_alarm();

// Initialise global data
global.CoinAmount = 0;
global.GemAmount = 0;
global.PlayerRank = 1;
global.PlayerLevel = 1;
global.CurrentXP = 0;
global.BallSelected = o_Football;
global.StageSelected = 1;
global.PlayedBefore = false;

// Initialise sprite fonts
var FuturaNumbersShadowed = string(" 0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ.,?!:-()%@&$£");
global.FuturaNumbersShadowed = font_add_sprite_ext(s_RankNumbers, FuturaNumbersShadowed, true, -50);
