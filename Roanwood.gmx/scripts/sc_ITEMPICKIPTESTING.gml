//Test code to add items to the players inventory
if (keyboard_check_pressed(ord('Z')))
    {
        sc_ItemPickup(global.items[0,0],global.items[0,2]);
    }
if (keyboard_check_pressed(ord('X')))
    {
        sc_ItemPickup(global.items[1,0],global.items[1,2]);
    }
if (keyboard_check_pressed(ord('C')))
    {
        sc_ItemPickup(global.items[2,0],global.items[2,2]);
    }
