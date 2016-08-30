//
//  ViewController.h
//  Examen
//
//  Created by Luis on 8/28/16.
//  Copyright © 2016 Luis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pagos.h"
#import "PayPalMobile.h"

@interface Pagos : UIViewController<PayPalPaymentDelegate>
@property (weak, nonatomic) IBOutlet UILabel *lblProducto;
@property (weak, nonatomic) IBOutlet UILabel *lblPrecio;
@property (weak, nonatomic) IBOutlet UIImageView *imgProducto;
@property (nonatomic, strong, readwrite) PayPalConfiguration *payPalConfiguration;
@property int articulo;
@end
