//damages the orc and checks for death
if(o_Player.sprite_index == s_PlayerAttack)
{
    ranCap = 50;
    for(i=0; i<10; i++)
    {
        instance_create(x+random(ranCap), y+random(ranCap), o_Rock);
    }
        instance_destroy();
}
