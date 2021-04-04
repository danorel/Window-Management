//
//  frame.m
//  Window-Management
//
//  Created by Dan Orel on 03.04.2021.
//

#import "frame.h"
    
@implementation DOFrame

- (id) initWithName: (NSString*) name {
    self->title = name;
    return self;
}

- (void) setup {
    __strong DOWindow *myWindow;      // typed pointer to NSWindow object
    __strong DOView   *myView;      // typed pointer to NSView object
    NSRect graphicsRect;  // contains an origin, width, height

    // initialize the rectangle variable
    graphicsRect = NSMakeRect(100.0, 350.0, 400.0, 400.0);

    myWindow = [[DOWindow alloc]
                initWithContentRect: graphicsRect
                styleMask:NSWindowStyleMaskTitled
                         |NSWindowStyleMaskClosable
                         |NSWindowStyleMaskMiniaturizable
                    backing:NSBackingStoreBuffered
                    defer:NO
                ];

    [myWindow setTitle:self->title];

    // create amd initialize the DemoView instance
    myView = [[DOView alloc] initWithFrame:graphicsRect];

    [myWindow setContentView:myView];    // set window's view

    [myWindow setDelegate:myView];       // set window's delegate
    [myWindow makeKeyAndOrderFront: nil]; // display window
}

@end

