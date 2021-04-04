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

    // float width  = [self bounds].size.width;
    // float height = [self bounds].size.height;
    
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

-(void) windowWillClose:(NSNotification*) notification {
    [NSApp terminate:self];
}

@end
