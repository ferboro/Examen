//
//  ViewController.h
//  Examen
//
//  Created by Luis on 8/28/16.
//  Copyright © 2016 Luis. All rights reserved.
//

#import <UIKit/UIKit.h>
@import GoogleMaps;
#import "WebServices.h"
#import "Declarations.h"
#import "MapResults.h"

@interface Start : UIViewController<GMSMapViewDelegate>
@property NSString *placeName;
@property NSString *placeTempMax;
@property NSString *placeTempMin;
@property NSString *placeHumedity;
@property NSString *placeImg;
//@property (weak, nonatomic) IBOutlet UILabel *lblCityValue;
//@property (weak, nonatomic) IBOutlet UILabel *lblTempMinValue;
//@property (weak, nonatomic) IBOutlet UILabel *lblHumedityValue;
//@property (weak, nonatomic) IBOutlet UILabel *lblTempMaxValue;

@end

