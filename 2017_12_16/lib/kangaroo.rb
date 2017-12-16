require 'byebug'

def kangaroo(x1, v1, x2, v2)
    # v2 * steps + x2 = v1 * steps + x1 
    # ( v2 - v1 ) * steps = ( x1 - x2 )
    # steps = ( x1 - x2 ) / ( v2 - v1 )
    # byebug
    steps = ( ( x1 - x2 ) * 1.0 ) / ( v2 - v1 )
    return true if steps % 1 == 0.0 && steps > 0 
    false
end