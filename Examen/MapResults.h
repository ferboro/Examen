//
//  MapResults.h
//  Examen
//
//  Created by Luis on 8/28/16.
//  Copyright © 2016 Luis. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MapResults : UIViewController
@property NSString *lblCityV;
@property NSString *lblTempMi;
@property NSString *lblTempMa;
@property NSString *lblHum;
@property (weak, nonatomic) IBOutlet UILabel *lblCityValue;
@property (weak, nonatomic) IBOutlet UILabel *lblTempMaxValue;
@property (weak, nonatomic) IBOutlet UILabel *lblTempMinValue;
@property (weak, nonatomic) IBOutlet UILabel *lblHumedityValue;


@end
