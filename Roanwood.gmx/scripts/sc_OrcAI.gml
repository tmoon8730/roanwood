//Checks for existence of player
if instance_exists(o_Player)
{
    //Stores location of player
    var playerLoc;
    playerLoc = instance_nearest(x, y, o_Player);
    
    //moves toward player at a speed of 5 pixels per step if the player is less than 40 pixels away
    if (distance_to_object(o_Player) < 80)
    {
        mp_potential_step_object(playerLoc.x, playerLoc.y, 5, o_TreeA);
        if(playerLoc.x > self.x)
        {
            // Player to the right of the orc
            if(image_index < 1 || image_index > 3){
                image_index = 1;
            }
        }
        if(playerLoc.x < self.x){
            // Player to the left of the orc
            if(image_index < 4 || image_index > 6){
                image_index = 4;
            }
        }
        image_speed = 0.2;
    }else{
        image_speed = 0;
        image_index = 0;
    }
}else{
    image_speed = 0;
    image_index = 0;
}
