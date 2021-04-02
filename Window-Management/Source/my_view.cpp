//
//  my_view.cpp
//  Window-Management
//
//  Created by Dan Orel on 02.04.2021.
//

#include "my_view.h"


int main(int argc, char** argv)
{
    id app = NULL;
    id pool = (id) objc_getClass("NSAutoreleasePool");
    
    if (!pool) {
        std::cerr << "Unable to get NSAutoreleasePool!\nAborting\n";
        return -1;
    }
    
    pool = objc_msgSend(pool, sel_registerName("alloc"));
    
    if (!pool) {
        std::cerr << "Unable to create NSAutoreleasePool...\nAborting...\n";
        return -1;
    }
    pool = objc_msgSend(pool, sel_registerName("init"));

    app = objc_msgSend((id)objc_getClass("NSApplication"),
                       sel_registerName("sharedApplication"));

    NSRunAlertPanel(CFSTR("Testing"),
                    CFSTR("This is a simple test to display NSAlertPanel."),
                    CFSTR("OK"), NULL, NULL);

    objc_msgSend(pool, sel_registerName("release"));
    
    return 0;
}
