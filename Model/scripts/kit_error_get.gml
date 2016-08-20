///kit_error_get(error_id)

var e = global._kit_errors[? real(argument0)];

if is_undefined(e)
{
    return ("código de erro indefinido!");
} else
{
    return (string(e));
}
