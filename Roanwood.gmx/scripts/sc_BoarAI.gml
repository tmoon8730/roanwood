if instance_exists(o_Player)
{
    var playerLoc;
    playerLoc = instance_nearest(x,y, o_Player);
    
    if(distance_to_object(o_Player) < 180)
    {
        mp_potential_step_object(playerLoc.x, playerLoc.y, 5, o_TreeA);
        if(image_index < 3 || image_index > 6){
            image_index = 3;
        }
        image_speed = 0.25;
    }else{
        image_speed = 0;
    }
}
