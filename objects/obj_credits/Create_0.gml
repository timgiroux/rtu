score = current_time - global.start_time;

text = @"0xB33F Productions
Joe Domabyl V
Tim Giroux
Andrew Liddell

Voices
Evangeline - Elin Waaker
Drumstick Daniel - Daniel Drake
---
SCORE: " + string(score) + "ms to complete";

x = room_width * .6;
y = room_height + 50;
height = string_height(text);

global.credits_halfway = false;
