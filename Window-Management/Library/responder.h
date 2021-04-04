//
//  frame.h
//  Window-Management
//
//  Created by Dan Orel on 03.04.2021.
//

#import <Cocoa/Cocoa.h>

#import "view.h"
#import "window.h"

/*
 * Defaults for responder:
 *  - title: __string NSString*: title of the responder.
 *  - view:
 *   - width:  __strong unsigned int: width of the graphics rect.
 *   - height: __strong unsignnd int: height of the graphics rect.
 */
#define RESPONDER_DEFAULT_TITLE @"DO Application"

#define RESPONDER_DEFAULT_WIDTH    400.0
#define RESPONDER_DEFAULT_HEIGHT   400.0
#define RESPONDER_DEFAULT_ORIGIN_X 100.0
#define RESPONDER_DEFAULT_ORIGIN_Y 350.0

@interface DOResponder : NSResponder {
    // Responder data.
    __strong NSString* title;
    
    // Graphic UI elements.
    __strong DOWindow *myWindow; // Typed pointer to DOWindow object.
    __strong DOView   *myView;   // Typed pointer to DOView object.
    
    // Display UI element.
    NSRect rect;
}

/*
 * Constructor without any parameters: all of them are default: look at 'initOnlyName' constructor.
 */
- (instancetype) init;

/*
 * Constructor with only one possible parameter:
 *  - window name
 *  - all others are default: look others in 'initWithName' constructor.
 */
- (instancetype) initOnlyName: (NSString*) name;

/*
 * Constructor with all possible parameters:
 *  - window name
 *  - window width
 *  - window height
 *  - start origin x
 *  - start origin y
 */
- (instancetype) initWithName: (NSString*) name
                     andWidth: (unsigned int) width
                    andHeight: (unsigned int) height
                         andX: (unsigned int) x
                         andY: (unsigned int) y;


@end
