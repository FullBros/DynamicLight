var nb_rays = ds_list_size(rays_x);

for (i = 0; i < nb_rays; i++)
{
	var prev_index;
	if (i == 0)
	{
		prev_index = nb_rays-1;
	}
	else
	{
		prev_index = i-1;
	}
			
	draw_triangle_color(
		mouse_x, 
		mouse_y, 
		rays_x[| i], 
		rays_y[| i], 
		rays_x[| prev_index], 
		rays_y[| prev_index], 
		c_gray, 
		c_gray, 
		c_gray, 
		false
	);
	
	// Rays
	//draw_line_width_color(mouse_x, mouse_y, rays_x[| i], rays_y[| i], 2, c_red, c_red);	
	
	// Impact of each ray
	//draw_circle_color(rays_x[| i], rays_y[| i], 3, c_red, c_red, false);
}

draw_self();