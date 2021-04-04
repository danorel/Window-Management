//
//  NSColor+window_color.h
//  Window-Management
//
//  Created by Dan Orel on 03.04.2021.
//

#import <Cocoa/Cocoa.h>

NS_ASSUME_NONNULL_BEGIN

@implementation NSColor (WindowColor)

+ (NSColor *) colorFromHexString:(NSString *) hex {
    /*
     * Static method for converting the hexademical string values to UIColor.
     * Meant for window color generation.
     * Examples:
     *     - #25854b -> UIColor[colorWithRed:0x25, green: 0x85, blue: 0x4b, alpha: 1.0]
     */
    unsigned rgbValue = 0;
    NSScanner *scanner = [NSScanner scannerWithString:hex];
    
    // Bypass '#' character
    [scanner setScanLocation:1];
    
    // Convert hexademical value to unsigned integer
    [scanner scanHexInt:&rgbValue];

    return [NSColor
                colorWithRed:((rgbValue & 0xFF0000) >> 16) / 255.0
                green:((rgbValue & 0xFF00) >> 8) / 255.0
                blue:(rgbValue & 0xFF) / 255.0
                alpha:1.0];
}

@end

NS_ASSUME_NONNULL_END
