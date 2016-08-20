if (enabled)
{draw_set_color(bg_color)}
else
{draw_set_color(bg_color_disabled)}
draw_rectangle(x, y, x + width, y + height, false)

//Se selecionado desenha um borda
if selected = true
{
    draw_set_color(c_white)
    draw_set_alpha(0.25)
    draw_rectangle(x-1, y-1, x + width + 1, y + height + 1, true)
    draw_set_alpha(1)
}

draw_set_font(global._kit_font_current)
draw_set_color(caption_color)
draw_set_halign(1)
draw_set_valign(1)
draw_text(x + width*0.5, y + height*0.5, caption)
draw_set_color(c_white)
