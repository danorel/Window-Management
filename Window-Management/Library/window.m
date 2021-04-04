//
//  window.m
//  Window-Management
//
//  Created by Dan Orel on 04.04.2021.
//

#import "window.h"

@implementation DOWindow

- (void) rightMouseDown: (NSEvent*) event {
    NSLog(@"Printing Location x: %ld", event.absoluteX);
}

@end
