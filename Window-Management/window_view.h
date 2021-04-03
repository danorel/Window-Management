//
//  window_view.h
//  Window-Management
//
//  Created by Dan Orel on 03.04.2021.
//

#import <Cocoa/Cocoa.h>

#ifndef window_view_h
#define window_view_h

@interface DemoView : NSView <NSWindowDelegate>
- (void) drawRect:(NSRect) rect;
@end


#endif /* window_view_h */
