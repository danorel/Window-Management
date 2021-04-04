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
    
    [NSBezierPath strokeLineFromPoint:A toPoint:B];
    [NSBezierPath strokeLineFromPoint:B toPoint:C];
    [NSBezierPath strokeLineFromPoint:C toPoint:A];
}

- (void) drawTriangle: (NSPoint) location {
    NSRect bounds = [self bounds];

    CGFloat width = bounds.size.width;
    CGFloat height = bounds.size.height;
    
    // Getting the length per triangle side.
    CGFloat length = get_triangle_length(width, height);
    
    // Extracting all possible sides of triangle.
    PointTuple ptA = get_triangle_A(location.x, location.y, length);
    PointTuple ptB = get_triangle_B(location.x, location.y, length);
    PointTuple ptC = get_triangle_C(location.x, location.y, length);
    
    // Making NSPoints from extracted struct points.
    self->A = NSMakePoint(ptA.x, ptA.y);
    self->B = NSMakePoint(ptB.x, ptB.y);
    self->C = NSMakePoint(ptC.x, ptC.y);
    
    // Trigger drawRect method.
    [self setNeedsDisplay:true];
}

// Events: Mouse clicks.

- (void) mouseUp: (NSEvent *) event {}

- (void) mouseDown: (NSEvent *) event {}

- (void) mouseDragged:(NSEvent *) event {
    [self drawTriangle: [event locationInWindow]];
}

- (void) rightMouseDown: (NSEvent*) event {
    [self drawTriangle: [event locationInWindow]];
}

// Events: Window events.

-(void) windowWillClose:(NSNotification*) notification {
    [NSApp terminate:self];
}

@end
