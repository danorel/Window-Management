//
//  window_view.h
//  Window-Management
//
//  Created by Dan Orel on 03.04.2021.
//

#import <Cocoa/Cocoa.h>
#import "NSColor+color.h"

/*
 * Declare the constants for View.
 * Contants meant for:
 *  - drawing elements on the screen.
 *  - drawing background on the screen.
 */
#define COLOR_DRAWING @"#ffffff"
#define COLOR_BACKGROUND @"#25854b"

@interface DOView : NSView <NSWindowDelegate> {
    NSColor* const colorDrawing;
    NSColor* const colorBackground;
}

- (void) drawRect:(NSRect) rect;

@property (atomic, copy, readwrite) NSColor* colorDrawing;
@property (atomic, copy, readwrite) NSColor* colorBackground;

@end

