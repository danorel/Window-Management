//
//  demo.m
//  Window-Management
//
//  Created by Dan Orel on 03.04.2021.
//

#import "demo.h"

@implementation Demo

- (void) setup {
    __strong NSWindow *myWindow;      // typed pointer to NSWindow object
    __strong DemoView   *myView;      // typed pointer to NSView object
    NSRect graphicsRect;  // contains an origin, width, height

    // initialize the rectangle variable
    graphicsRect = NSMakeRect(100.0, 350.0, 400.0, 400.0);

    myWindow = [[NSWindow alloc]
                initWithContentRect: graphicsRect
                styleMask:NSWindowStyleMaskTitled
                         |NSWindowStyleMaskClosable
                         |NSWindowStyleMaskMiniaturizable
                    backing:NSBackingStoreBuffered
                    defer:NO
                ];

    [myWindow setTitle:@"Tiny Application Window"];

    // create amd initialize the DemoView instance
    myView = [[DemoView alloc] initWithFrame:graphicsRect];

    [myWindow setContentView:myView];    // set window's view

    [myWindow setDelegate:myView];       // set window's delegate
    [myWindow makeKeyAndOrderFront: nil]; // display window
}

@end
