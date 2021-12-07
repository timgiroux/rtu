diary_out += string_char_at(diary_in, index);
index += 1;

if(!skip) {
	if( (index - 1) != string_length(diary_in)) {
		alarm[0] = 4;
	}
	else {
		global.diary_complete = true;
	}
}
else {
	diary_out = diary_in;
	global.diary_complete = true;
}