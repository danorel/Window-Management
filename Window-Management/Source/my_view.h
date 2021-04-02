//
//  my_view.h
//  Window-Management
//
//  Created by Dan Orel on 02.04.2021.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

#ifndef my_view_h
#define my_view_h

@interface DemoView : NSView
- (void) drawRect:(NSRect) rect;
@end

void setup(void);

#endif /* my_view_h */
