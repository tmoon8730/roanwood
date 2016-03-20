//damages the orc and checks for death
if(o_Player.sprite_index == s_PlayerAttack)
    {
        hp -= 50;
    }
    
if (hp <=0)
    {
        instance_destroy();
    }
    
