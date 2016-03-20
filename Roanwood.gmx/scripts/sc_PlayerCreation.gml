//sets players health to 100
o_Player.health = 100;
o_Player.image_speed = 0;
//Instaniates the p_face (NON-FUNCTIONAL)
global.p_face = "null";

display_set_gui_size(-1, -1);

//Creates the inventory variables

i_showInv = false; //Determines whether to show the inventory
globalvar i_maxInvSlots; //The max num of inventory slots
i_maxInvSlots = 9;

//Creates the Inventory array
for(i=0; i<= i_maxInvSlots; i+=1)
    {
        for(n=0; n<= i_maxInvSlots; n+=1)
        {
            global.p_Inventory[i,n] = "";
        }
    }
