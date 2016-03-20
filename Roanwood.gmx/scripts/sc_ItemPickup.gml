//Adds an item into the players first empty inventory slot
for(i=0;i<=i_maxInvSlots;i+=1)
    {
        if (global.p_Inventory[i,0] = "" || global.p_Inventory[i,0] = argument0)
         {
            global.p_Inventory[i,0] = argument0;
            global.p_Inventory[i,2] = argument1;
            if (global.p_Inventory[i,1] = "")
            {
                global.p_Inventory[i,1] = 1;
                break;
            }
            else
                global.p_Inventory[i,1] += 1; 
            break;
         }
    }
