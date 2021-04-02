//
//  main.m
//  Window-Management
//
//  Created by Dan Orel on 31.03.2021.
//

#import <Foundation/Foundation.h>
#import "Source/my_view.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // create the application object
        NSApp = [NSApplication sharedApplication];

        // set up the window and drawing mechanism
        setup();

        // run the main event loop
        [NSApp run];
    }
    return 0;
}
