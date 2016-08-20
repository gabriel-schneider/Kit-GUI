///kit_element_set_enabled(id [, enable])
var this = argument[0];

if argument_count > 1
{
    this.enabled = argument[1]
} else
{
    this.enabled = !this.enabled;
}                              

