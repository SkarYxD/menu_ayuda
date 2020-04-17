#include <amxmodx>

#define PLUGIN "Precio-Ayuda"
#define VERSION "1.0a"
#define AUTHOR "Jk Dev"


public plugin_init() {
    register_plugin(PLUGIN, VERSION, AUTHOR)

    register_clcmd("say /precios", "Precios_Menu")
    register_clcmd("say_team /precios", "Precios_Menu")
    register_clcmd("say /ayuda", "Ayuda_Menu")
    register_clcmd("say_team /ayuda", "Ayuda_Menu")
}

public Precios_Menu(id)
{
    new Menu = menu_create("\w[\rGlobal Gaming\w]\r--\y>\w[\rPRECIOS\w]", "cmds") 
    menu_additem(Menu, "\w[\rAdmin Basico\w] \w[\d70\w]"   , "1", 0)
    menu_additem(Menu, "\w[\rAdmin Full\w] \w[\d90\w]"   , "2", 0)
    menu_additem(Menu, "\w[\rDeveloper\w] \w[\dby Jk\w]"   , "3", 0)
    menu_additem(Menu, "\w[\rAdquiere tu\w] \w[\dAdmin\w]", "5", 0)
    menu_setprop(Menu, MPROP_EXITNAME,"Salir")
    menu_setprop(Menu, MPROP_EXIT, MEXIT_ALL)
    menu_display(id, Menu, 0) 
}

public cmds(id, Menu, item)
{
    if (item == MENU_EXIT)
    {
        menu_destroy(Menu)
        return PLUGIN_HANDLED
    }
    
    new iData[6]; 
    new iAccess; 
    new iCallback; 
    new iName[64]; 
    menu_item_getinfo(Menu, item, iAccess, iData, 5, iName, 63, iCallback) 
    
    switch (str_to_num(iData)) 
    {
 /* Mostramos que ofrece el servicio de el admin  */
        case 1:
        {
    new Menu = menu_create("\w[\yAdmin Basico\w]", "cmds") 
    menu_additem(Menu, "\w[\rBan\w]"  )
    menu_additem(Menu, "\w[\rKick\w]"  )
    menu_additem(Menu, "\w[\rCambio de mapa\w]" )
    menu_additem(Menu, "\w[\rSlay/Slap\w]" )
    menu_additem(Menu, "\w[\rUso de comandos basicos\w]" )
    menu_setprop(Menu, MPROP_EXITNAME,"Salir")
    menu_setprop(Menu, MPROP_EXIT, MEXIT_ALL)
    menu_display(id, Menu, 0) 
    
    ChatColor(id,"!y[!gGlobal Gaming!y] !teamPara compra de !y[!gADMIN-Basico!y] !teamContacta a !y[!gStaff!y]")
   
        }
        case 2:
        {
    new Menu = menu_create("\w[\yAdmin Full\w]", "cmds") 
    menu_additem(Menu, "\w[\rBan\w]" )
    menu_additem(Menu, "\w[\rKick\w]" )
    menu_additem(Menu, "\w[\rCambio de mapa\w]" )
    menu_additem(Menu, "\w[\rSlay/Slap\w]")
    menu_additem(Menu, "\w[\rDestroy\w]")
    menu_additem(Menu, "\w[\rUso de comandos Basicos y Avanzados\w]")
    menu_setprop(Menu, MPROP_EXITNAME,"Salir")
    menu_setprop(Menu, MPROP_EXIT, MEXIT_ALL)
    menu_display(id, Menu, 0) 
 
  
    
    ChatColor(id,"!y[!gGlobal Gaming!y] !teamPara compra de !y[!gADMIN-Full!y] !teamContacta a !y[!gStaff!y]")

        }
        case 3:
        {
    new Menu = menu_create("\w[\yDeveloper by JK\w]", "cmds") // \r = Rojo - \y = Amarillo - \d = Plomo - \w = Blanco
    menu_additem(Menu, "\w[\rFACEBOOK\w]" )
    menu_additem(Menu, "\w[\bwww.facebook.com/joaquin.centurion.16121\w]" )
    menu_additem(Menu, "\w[\rWHATSAPP\w]" )
    menu_additem(Menu, "\w[\g+5493454326776\w]" )
    menu_setprop(Menu, MPROP_EXITNAME,"Salir")
    menu_setprop(Menu, MPROP_EXIT, MEXIT_ALL)
    menu_display(id, Menu, 0) 
    

      }
     case 5:
        {
    new Menu = menu_create("\w[\yCONTACTO \w]", "cmds") 
    menu_additem(Menu, "\w[\rFACEBOOK\w]" )
    menu_additem(Menu, "\w[\bwww.facebook.com/groups/738610326651803/ \w]" )
    menu_additem(Menu, "\w[\rWHATSAPP\w]" )
    menu_additem(Menu, "\w[\g+5493813311114\w]" )
    menu_setprop(Menu, MPROP_EXITNAME,"Salir")
    menu_setprop(Menu, MPROP_EXIT, MEXIT_ALL)
    menu_display(id, Menu, 0) 
       
        }
    }
    return PLUGIN_HANDLED
} 

public Ayuda_Menu(id)
{
    new Menu = menu_create("\w[\rGlobal Gaming\w]\r--\y>\w[\rAYUDA\w]", "cmds_a") 
    menu_additem(Menu, "\w[\rVirus\w]"   , "1", 0)
    menu_additem(Menu, "\w[\rInfo Server\w]"   , "2", 0)
    menu_additem(Menu, "\w[\rReglas\w]", "3", 0)
    menu_additem(Menu, "\w[\rQuejas\w]", "4", 0)
    menu_additem(Menu, "\w[\rDeveloper\w] \w[\dby Jk\w]"   , "5", 0)
    menu_setprop(Menu, MPROP_EXITNAME,"Salir")
    menu_setprop(Menu, MPROP_EXIT, MEXIT_ALL)
    menu_display(id, Menu, 0) 
}

public cmds_a(id, Menu, item)
{
    if (item == MENU_EXIT)
    {
        menu_destroy(Menu)
        return PLUGIN_HANDLED
    }
    
    new iData[6]; 
    new iAccess; 
    new iCallback; 
    new iName[64]; 
    menu_item_getinfo(Menu, item, iAccess, iData, 5, iName, 63, iCallback) 
    
    switch (str_to_num(iData)) 
    {
 /* Mostramos la solucion del virus  */
        case 1:
        {
    new Menu = menu_create("\w[\yVirus\w]", "cmds_a") 
    menu_additem(Menu, "\w[\rPara quitar el virus\w]"  )
    menu_additem(Menu, "\w[\rEn consola escribir \yunbindall\w]"  )
    menu_additem(Menu, "\w[\rIr a configuracíon de teclado y dar en \yDefault\w]" )
    menu_additem(Menu, "\w[\rListo!\w]" )
    menu_setprop(Menu, MPROP_EXITNAME,"Salir")
    menu_setprop(Menu, MPROP_EXIT, MEXIT_ALL)
    menu_display(id, Menu, 0) 
   
        }
        case 2:
        {
    new Menu = menu_create("\w[\yInfor Server\w]", "cmds_a") 
    menu_additem(Menu, "\w[\rSistema Anti Spam\w]" )
    menu_additem(Menu, "\w[\rSistema Anti AFK\w]" )
    menu_additem(Menu, "\w[\rSistema XRedirect\w]" )
    menu_additem(Menu, "\w[\rSistema Mute Say/Mic\w]")
    menu_additem(Menu, "\w[\rSistema Admin Check\w]")
    menu_additem(Menu, "\w[\rSistema Anti Retry\w]")
    menu_setprop(Menu, MPROP_EXITNAME,"Salir")
    menu_setprop(Menu, MPROP_EXIT, MEXIT_ALL)
    menu_display(id, Menu, 0) 
 
        }
        case 3:
        {
    new Menu = menu_create("\w[\yREGLAS \w]", "cmds_a") 
    menu_additem(Menu, "\w[\rNO HACER SPAM\w]" )
    menu_additem(Menu, "\w[\yNO INSULTAR A LOS JUGADORES \w]" )
    menu_additem(Menu, "\w[\rLOS MIX SE ARMAN CON 10+ JUGADORES\w]" )
    menu_additem(Menu, "\w[\yBAN'S O KICK CON MOTIVOS\w]" )
    menu_setprop(Menu, MPROP_EXITNAME,"Salir")
    menu_setprop(Menu, MPROP_EXIT, MEXIT_ALL)
    menu_display(id, Menu, 0)     
    

        }
        case 4:
        {
    new Menu = menu_create("\w[\yQUEJAS \w]", "cmds_a") 
    menu_additem(Menu, "\w[\rPARA QUEJAS HACIA\w]" )
    menu_additem(Menu, "\w[\yJUGADORES \w]" )
    menu_additem(Menu, "\w[\rADMINISTRADORES\w]" )
    menu_additem(Menu, "\w[\yEscribir /reportar\w]" )
    menu_setprop(Menu, MPROP_EXITNAME,"Salir")
    menu_setprop(Menu, MPROP_EXIT, MEXIT_ALL)
    menu_display(id, Menu, 0)     
    

      }
     case 5:
        {
    new Menu = menu_create("\w[\yDeveloper by JK\w]", "cmds_a") // \r = Rojo - \y = Amarillo - \d = Plomo - \w = Blanco
    menu_additem(Menu, "\w[\rFACEBOOK\w]" )
    menu_additem(Menu, "\w[\ywww.facebook.com/joaquin.centurion.16121\w]" )
    menu_additem(Menu, "\w[\rWHATSAPP\w]" )
    menu_additem(Menu, "\w[\y+5493454326776\w]" )
    menu_setprop(Menu, MPROP_EXITNAME,"Salir")
    menu_setprop(Menu, MPROP_EXIT, MEXIT_ALL)
    menu_display(id, Menu, 0) 
       
        }
    }
    return PLUGIN_HANDLED
} 

stock ChatColor(const id, const input[], any:...)
{
    new count = 1, players[32]
    static msg[191]
    vformat(msg, 190, input, 3)
    
    replace_all(msg, 190, "!g", "^4") // Green Color
    replace_all(msg, 190, "!y", "^1") // Default Color
    replace_all(msg, 190, "!team", "^3") // Team Color
    replace_all(msg, 190, "!team2", "^0") // Team2 Color
    
    if (id) players[0] = id; else get_players(players, count, "ch")
    {
        for (new i = 0; i < count; i++)
        {
            if (is_user_connected(players[i]))
            {
                message_begin(MSG_ONE_UNRELIABLE, get_user_msgid("SayText"), _, players[i])
                write_byte(players[i]);
                write_string(msg);
                message_end();
            }
        }
    }
} 
