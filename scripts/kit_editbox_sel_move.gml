///kit_editbox_sel_move(id, amount)
//Move os ponteiros de posição.
var this = argument0;

if keyboard_check_direct(vk_shift)
{
    this.selector_pos[1] += argument1                 
} else
{
    kit_editbox_sel_fix(this)
    if this.selector_pos[0] <> this.selector_pos[1] 
    {
        if argument1 > 0    
        {
            this.selector_pos[0] = this.selector_pos[1]    
        } else
        {
            if argument1 < 0    
            {
                this.selector_pos[1] = this.selector_pos[0]
            }
        }
    } else
    {
        this.selector_pos[0] += argument1
        this.selector_pos[1] += argument1
    }
}

