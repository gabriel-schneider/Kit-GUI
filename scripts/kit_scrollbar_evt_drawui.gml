
var rate, xx, yy;
rate = (value/value_max) 
switch (orientation)
{
    case ko_horizontal: {
        xx = x + rate*(width - btn_width)
        yy = y
    } break;
    case ko_vertical: {
        xx = x
        yy = y + rate*(height - btn_height)
    } break;
}

draw_set_color(bg_color)
draw_rectangle(x, y, x + width, y + height, false)
draw_set_color(btn_color)

draw_rectangle(xx, yy, xx + btn_width, yy + btn_height, false)
