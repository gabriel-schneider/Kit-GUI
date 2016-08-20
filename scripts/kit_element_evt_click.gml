///kit_element_evt_click(id)
var this = argument0;

if script_exists(this.evt_click_script)
{
    var a = this.evt_click_args;
    switch (array_length_1d(a))
    {
        case 0: script_execute(this.evt_click_script); break;
        case 1: script_execute(this.evt_click_script, a[0]); break;
        case 2: script_execute(this.evt_click_script, a[0], a[1]); break;
        case 3: script_execute(this.evt_click_script, a[0], a[1], a[2]); break;
        case 4: script_execute(this.evt_click_script, a[0], a[1], a[2], a[3]); break;
        case 5: script_execute(this.evt_click_script, a[0], a[1], a[2], a[3], a[4]); break;
        case 6: script_execute(this.evt_click_script, a[0], a[1], a[2], a[3], a[4], a[5]); break;
        case 7: script_execute(this.evt_click_script, a[0], a[1], a[2], a[3], a[4], a[5], a[6]); break;
        case 8: script_execute(this.evt_click_script, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7]); break;
    }
    return  true
} else
{
    kit_error_tell(3)
    return false
}
