//
//  frame.h
//  Window-Management
//
//  Created by Dan Orel on 03.04.2021.
//

#import <Cocoa/Cocoa.h>

#import "view.h"
#import "window.h"

@interface DOFrame : NSObject {
    NSString* title;
}

- (id) initWithName: (NSString*) name;
- (void) setup;

@end
