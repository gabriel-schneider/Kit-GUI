if img < 0
{exit}

if img_type = asset_sprite
{
    draw_sprite_ext(img, img_frame, x, y, 1, 1, 0, c_white, img_alpha)
} else
{
    draw_background_ext(img, x, y, 1, 1, 0, c_white, img_alpha)
}
