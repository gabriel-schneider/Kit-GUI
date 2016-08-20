///kit_editbox_upd_display(id)
var this = argument0;

this.text_display_start = this.text_offset + 1
this.text_display_end = 0
while (string_width(string_copy(this.text, this.text_display_start, this.text_display_end)) < this.width - 8)
{
    this.text_display_end += 1
    if this.text_display_end >= string_length(this.text)
    {
        this.text_display_end += 1
        break;
    }
}
this.text_display_end -= 1
this.text_display = string_copy(this.text, this.text_display_start, this.text_display_end)

