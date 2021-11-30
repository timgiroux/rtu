/// @description Update the frame buffer

if (video_exists(v)) {
  if (video_is_playing(v)) {
    video_position = video_get_playtime(v);
    video_grab_frame_buffer(v, buffer_get_address(buff));
  } else if (video_position >= video_get_duration(v)) {
	buffer_delete(buff);
	surface_free(surf);

	video_stop(v);
	video_delete(v);
  }
}