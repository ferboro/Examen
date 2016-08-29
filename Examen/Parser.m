//
//  Parser.m
//  Examen
//
//  Created by Luis on 8/28/16.
//  Copyright © 2016 Luis. All rights reserved.
//

#import "Parser.h"

@implementation Parser


+ (ObjectResponse *)parseGeoObject {
    //check for valid value
    if(mjsonGeo != nil) {
        // Using ObjectMapper Directly
        ObjectResponse *customizedObject = [[ObjectMapper sharedInstance] objectFromSource:mjsonGeo toInstanceOfClass:[ObjectResponse class]];
        return customizedObject;
    }
    return nil;
}

@end
