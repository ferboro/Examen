//
//  MapResults.m
//  Examen
//
//  Created by Luis on 8/28/16.
//  Copyright © 2016 Luis. All rights reserved.
//

#import "MapResults.h"

@interface MapResults ()

@end

@implementation MapResults

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.lblCityValue.text = self.lblCityV;
    self.lblTempMaxValue.text = self.lblTempMa;
    self.lblTempMinValue.text = self.lblTempMi;
    self.lblHumedityValue.text = self.lblHum;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
