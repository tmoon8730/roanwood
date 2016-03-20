//Draws the players inventory
draw_set_font(f_InvFont);
j = 0;
draw_sprite(s_HotBar, 0, 250, 718);
for(i=250;i<=745;i=i+5)
{
    draw_set_colour(c_black);
    //draw_rectangle(i, 689, i+45, 734, false);
    //Numbers for inventory
    draw_set_colour(c_gray);
    if(global.p_Inventory[j,2] != "")
    {
        draw_sprite(global.p_Inventory[j,2], 0, i+7, 722);
    }
    draw_text(i+32,749,global.p_Inventory[j,1]);
    j++;
    i=i+45;
}


if(i_showInv==true) 
{
    draw_text(384, 384, "Inventory");
    for(i=0;i<=i_maxInvSlots;i+=1)
    {
        draw_text(384+16,384+32+(16*i),global.p_Inventory[i,0]);
        draw_text(384+62,384+32+(16*i),global.p_Inventory[i,1]);
    }
}
