///kit_label_evt_drawui()
if bg_enabled
{
    draw_set_colour(bg_color)
    draw_roundrect(x - padding, y - padding, x + width + padding, y + height + padding, false)
}
draw_set_halign(caption_halign)
draw_set_valign(1)
draw_set_colour(caption_color)
draw_text(floor(x + caption_halign*(width/2)), y + floor(height*0.5) + 1, caption)

