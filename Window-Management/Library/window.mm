//
//  window.m
//  Window-Management
//
//  Created by Dan Orel on 04.04.2021.
//

#import "window.h"

@implementation DOWindow

- (void) rightMouseDown: (NSEvent*) event {
    NSPoint location = [event locationInWindow];
    NSRect  bounds   = [self.contentView bounds];
    NSLog(@"[DOWindow]: Printing size of view: %f x %f", bounds.size.width, bounds.size.height);
    NSLog(@"[DOWindow]: Printing Location x: %f", location.x);
    NSLog(@"[DOWindow]: Printing Location y: %f", location.y);
}

@end
