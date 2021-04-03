//
//  window_view.m
//  Window-Management
//
//  Created by Dan Orel on 03.04.2021.
//

#import "window_view.h"


@implementation DemoView

- (void) drawRect:(NSRect) rect  {
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
