//
//  my_view.m
//  Window-Management
//
//  Created by Dan Orel on 02.04.2021.
//

#import "my_view.h"

@implementation DemoView

- (void) drawRect:(NSRect) rect {
    NSLog(@"Hello from method!");
    
    // get the size of the application's window and view objects
    // float width  = [self bounds].size.width;
    // float height = [self bounds].size.height;
    
    [[NSColor whiteColor] set];   // set the drawing color to white
    NSRectFill([self bounds]);    // fill the view with white
    
    [[NSColor blackColor] set];   // set the drawing color to black

    NSPoint p1 = NSMakePoint(1, 1);
    NSPoint p2 = NSMakePoint(100, 100);
    [NSBezierPath strokeLineFromPoint:p1 toPoint:p2];
}

-(void) windowWillClose:(NSNotification*) notification {
    [NSApp terminate:self];
}

@end

void setup(void) {
    __strong NSWindow *myWindow;      // typed pointer to NSWindow object
    __strong NSView   *myView;        // typed pointer to NSView object
    NSRect    graphicsRect;  // contains an origin, width, height

    // initialize the rectangle variable
    graphicsRect = NSMakeRect(100.0, 350.0, 400.0, 400.0);

    myWindow = [[NSWindow alloc]              // create the window
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

