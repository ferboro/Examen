//
//  Declarations.h
//  Examen
//
//  Created by Luis on 8/28/16.
//  Copyright © 2016 Luis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SBJson.h"
#import "ObjectMapper.h"
#import "ObjectResponse.h"
#import "Coord.h"
#import "Parser.h"
#import "Weather.h"

//Debug
#define nDebugEnable        1
#define print(x)            if(nDebugEnable){(x);}

extern NSDictionary *mjsonGeo;
@interface Declarations : NSObject

@end
