!Router
        
        rommon 1 >confreg 0x2142
        rommon 1 >confreg 0x2142 reset
        Router>enable
        Router>erase startup-config
        Router>configure terminal
        Router(config)#configure-register 0x2102
        Router#copy running-config startuo-config
        

    
