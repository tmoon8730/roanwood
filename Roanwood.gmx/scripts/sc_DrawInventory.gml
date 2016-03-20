if(i_showInv==true) 
{
    draw_text(display_get_gui_width()+64,display_get_gui_height(),"Inventory");
    for(i=0;i<=i_maxInvSlots;i+=1)
    {
        draw_text(x+16,y+32+(16*i),global.p_Inventory[i,0]);
    }
}
