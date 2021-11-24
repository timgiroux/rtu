function move_joe(target_x, target_y, spd, lag) {

    static positions = {
        x: [],
        y: []
    };

    // initialize array's to 0
    positions.x[lag] = 0;
    positions.y[lag] = 0;
   
	// shift values over by one
    for(var index = lag; index > 0; index--) {
        positions.x[index] = positions.x[index - 1];
        positions.y[index] = positions.y[index - 1];
    }
	
    // starting location
    positions.x[0] = target_x;
    positions.y[0] = target_y;
   
    // destination positions
    static target = {x: 0, y: 0};
	
	// destination just above tim
    target.x = positions.x[lag-1] - 10;
    target.y = positions.y[lag-1] - 15;
   
   
    // movement
    var dis = point_distance(x, y, target.x, target.y);
    if(dis > spd) {
        // the angle from joe to the tim
        var dir = point_direction(x, y, target.x, target.y);
		
        // deltas of x and y that need to be moved to meet tim
        var dx = lengthdir_x(spd, dir);
        var dy = lengthdir_y(spd, dir);
        x += dx;
        y += dy;
		
    } else {
        // Snap to last position if close enough to Target
        x = target.x;
        y = target.y;
    }
}