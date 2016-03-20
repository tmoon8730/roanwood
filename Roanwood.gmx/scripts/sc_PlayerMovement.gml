//Movement in the Cardinal Directions
//hspeed = horizontal values
//vspeed = vertical values
//Keyboard_check triggers for each step the key is held.
//p_face used to track direction that the player is facing.



var movementSpeed = 0.3;

if (keyboard_check(ord('A')))
    {
        global.p_face = "right";
        hspeed = -6;
        
        // Basic animation stuff
        image_speed = movementSpeed;
        // If outside the range for the left facing animations
        if((image_index < 3)||(image_index = 6)){
            // reset to the start of the left facing animations
            image_index = 3;
        }
    }
if (keyboard_check(ord('D')))
    {
        global.p_face = "left";
        hspeed = 6;
        image_speed = movementSpeed;
        if(image_index >=3){
            image_index = 0;
        }
    }
if (keyboard_check(ord('W')))
    {
        global.p_face = "up";
        vspeed = -6;
        image_speed = movementSpeed;
        if(image_index < 6 || image_index = 9){
            image_index = 6;
        }
    }
if (keyboard_check(ord('S')))
    {
        global.p_face = "down";
        vspeed = 6;
        image_speed = movementSpeed;
        if(image_index < 9 || image_index = 11){
            image_index = 9;
        }
    }

//Handles ceasation of movement
if (keyboard_check_released(ord('A')) )
    {
        speed = 0;
        image_speed = 0;
        image_index = 5;
    }
if (keyboard_check_released(ord('D')))
    {
        speed = 0;
        image_speed = 0;
        image_index = 0;
    }
if (keyboard_check_released(ord('W')))
    {
        speed = 0;
        image_speed = 0;
        image_index = 6;
    }
if (keyboard_check_released(ord('S')))
    {
        speed = 0;
        image_speed = 0;
        image_index = 9;
    }

//Variable for drawing the inventory
if(keyboard_check_pressed(vk_tab))
    {
        if(i_showInv==true)
        {
            i_showInv=false;
        }
        else if(i_showInv==false)
        {
            i_showInv=true;
        }
    }    

//Handles sword attack on mouse click spriting
if (mouse_check_button(mb_left))
    {
        speed = 0;
        sprite_index = s_PlayerAttack;
    }
if(mouse_check_button_released(mb_left))
    {
        sprite_index = s_PlayerIdle;
    }
    
//Handles Player Blocking sprite
if (mouse_check_button(mb_right))
    {
        sprite_index = s_PlayerBlock;
        
        //slows the player when moving and blocking
        if(vspeed != 0 || hspeed !=0)
        {
            if(global.p_face == "up")
            {
                vspeed +=3;
            }
            if(global.p_face = "down")
            {
                vspeed -=3;
            }
            if(global.p_face = "right")
            {
                hspeed +=3;
            }
            if(global.p_face = "left")
            {
                hspeed -=3;
            }
        }
    }
if(mouse_check_button_released(mb_right))
    {
        sprite_index = s_PlayerIdle;
    }
