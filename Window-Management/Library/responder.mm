//
//  frame.m
//  Window-Management
//
//  Created by Dan Orel on 03.04.2021.
//

#import "responder.h"
    
@implementation DOResponder

- (instancetype) init {
    self = [super init];
    return [self initOnlyName:RESPONDER_DEFAULT_TITLE];
}

- (instancetype) initOnlyName: (NSString*) name {
    return [self initWithName:name
                     andWidth:RESPONDER_DEFAULT_WIDTH
                     andHeight:RESPONDER_DEFAULT_HEIGHT
                          andX:RESPONDER_DEFAULT_ORIGIN_X
                          andY:RESPONDER_DEFAULT_ORIGIN_Y];
}

- (instancetype) initWithName: (NSString*) name
                     andWidth: (unsigned int) width
                    andHeight: (unsigned int) height
                         andX: (unsigned int) x
                         andY: (unsigned int) y {
    self->title = name;
    
    // Create the rectangle drawing space entity.
    self->rect  = NSMakeRect(x,
                             y,
                             width,
                             height);
    
    // Create the view entity.
    self->myView = [[DOView alloc] initWithFrame:self->rect];
    
    // Create the window entity.
    // Define the window title and bind view per current window.
    self->myWindow = [[DOWindow alloc]
                      initWithContentRect: self->rect
                      styleMask:NSWindowStyleMaskTitled
                               |NSWindowStyleMaskClosable
                               |NSWindowStyleMaskMiniaturizable
                               |NSWindowStyleMaskResizable
                          backing:NSBackingStoreBuffered
                          defer:NO
                      ];
    [self->myWindow setTitle:self->title];
    [self->myWindow setContentView:self->myView];
    [self->myWindow setDelegate:myView];
    [self->myWindow makeKeyAndOrderFront: nil];
    
    return self;
}

@end

