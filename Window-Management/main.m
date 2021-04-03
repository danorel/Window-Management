//
//  main.m
//  Window-Management
//
//  Created by Dan Orel on 31.03.2021.
//

#include "main.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create the application object
        NSApp = [NSApplication sharedApplication];

        // set up the window and drawing mechanism
        Demo *demo = [[Demo alloc] init];
        [demo setup];

        // run the main event loop
        [NSApp run];
    }
    return 0;
}
