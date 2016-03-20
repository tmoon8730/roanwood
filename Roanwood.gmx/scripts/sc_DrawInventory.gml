//Draws the players
if(i_showInv==true) 
{
    draw_text(o_Player.x,o_Player.y,"Inventory");
    for(i=0;i<=i_maxInvSlots;i+=1)
    {
        draw_text(o_Player.x,o_Player.y,global.p_Inventory[i,0]);
        draw_text(o_Player.x, o_Player.y, "Inventory");
    }
    for(i=0;i<=i_maxInvSlots;i+=1)
    {
        draw_text(x+16,y+32+(16*i),global.p_Inventory[i,0]);
        draw_text(x+62,y+32+(16*i),global.p_Inventory[i,1]);
    }
}
