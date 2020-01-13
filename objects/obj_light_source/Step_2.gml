x = mouse_x;
y = mouse_y;

ds_list_clear(rays_x);
ds_list_clear(rays_y);

for (var angle = 0; angle < 360; angle += 0.3)
{
	var p2_x = mouse_x + lengthdir_x(1500, angle);
	var p2_y = mouse_y + lengthdir_y(1500, angle);
		
	var r = collision_line_point(mouse_x, mouse_y, p2_x, p2_y, obj_light_obstacle, true, true);
	if (r[0] != noone)
	{
		var p2_x = r[1];
		var p2_y = r[2];
	}
	
	ds_list_add(rays_x, p2_x);
	ds_list_add(rays_y, p2_y);
}



