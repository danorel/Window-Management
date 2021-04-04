//
//  window_view.m
//  Window-Management
//
//  Created by Dan Orel on 03.04.2021.
//

#import "view.h"

@implementation DOView

- (instancetype)initWithFrame:(NSRect)frameRect {
    self = [super initWithFrame:frameRect];
    self.colorDrawing = [NSColor colorFromHexString:VIEW_COLOR_DRAWING];
    self.colorBackground = [NSColor colorFromHexString:VIEW_COLOR_BACKGROUND];
    return self;
}

@synthesize colorDrawing;
@synthesize colorBackground;

- (void) drawRect:(NSRect) rect  {
    [super drawRect:rect];

    // Set the background drawing color to while.
    [self.colorBackground set];
    NSRectFill([self bounds]);
    
    // Set the drawing color to black.
    [self.colorDrawing set];
    
    // Draw the line on the screen.
    NSPoint p1 = NSMakePoint(1, 1);
    NSPoint p2 = NSMakePoint(100, 100);
    [NSBezierPath strokeLineFromPoint:p1 toPoint:p2];
}

- (void) drawTriangle: (NSPoint) location {
    NSRect bounds = [self bounds];
    
    CGFloat width = bounds.size.width;
    CGFloat height = bounds.size.height;
    
    CGFloat length = get_triangle_length(width, height);
    
    NSLog(@"Logging side length: %f", length);
    
//    PointTuple ptA = [get_triangle_A(1, 2, 5)];
//    NSPoint A = [[NSPoint alloc] init];
//    A.x = ptA.x;
//    A.y = ptA.y;
    
//    NSLog(@"Side length: %uf", side_length);
    
    NSLog(@"[View]: Printing size of view: %f x %f", bounds.size.width, bounds.size.height);
    NSLog(@"[View]: Printing Location x: %f", location.x);
    NSLog(@"[View]: Printing Location y: %f", location.y);
}

// Events: Mouse clicks.

- (void) rightMouseDown: (NSEvent*) event {
    NSPoint location = [event locationInWindow];
    [self drawTriangle: location];
}

// Events: Window events.

-(void) windowWillClose:(NSNotification*) notification {
    [NSApp terminate:self];
}

@end
