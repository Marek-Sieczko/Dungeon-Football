/// @description Setup

global.DeltaFactor = 1;
#macro delta global.DeltaFactor
#macro ALARMINACTIVE -100

for (var i = 0; i < 12; ++i) {
    Alarm[i] = ALARMINACTIVE;
}
