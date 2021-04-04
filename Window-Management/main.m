//
//  main.m
//  Window-Management
//
//  Created by Dan Orel on 31.03.2021.
//

#include "main.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create the application object
        NSApp = [NSApplication sharedApplication];

        // Set up the window and drawing mechanism
        DOFrame *frame = [[DOFrame alloc] initWithName:@"Window-Management Application"];
        [frame setup];

        // Run the main event loop
        [NSApp run];
    }
    return 0;
}
