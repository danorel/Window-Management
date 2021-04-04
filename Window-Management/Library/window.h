//
//  window.h
//  Window-Management
//
//  Created by Dan Orel on 04.04.2021.
//

#import <Cocoa/Cocoa.h>

@interface DOWindow : NSWindow

- (void) windowDidResize:(NSNotification*) notification;

- (void) rightMouseDown: (NSEvent*) event;

@end
