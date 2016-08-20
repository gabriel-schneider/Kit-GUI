var this = argument0;

if this.width > this.height
{
    this.orientation = ko_horizontal 
}
else
{
    this.orientation = ko_vertical
}

this.btn_width  = clamp(this.btn_size, 0, this.width)
this.btn_height = clamp(this.btn_size, 0, this.height)

