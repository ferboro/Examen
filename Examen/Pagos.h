//
//  ViewController.h
//  Examen
//
//  Created by Luis on 8/28/16.
//  Copyright © 2016 Luis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pagos.h"

@interface Pagos : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *lblProductoValue;
@property (weak, nonatomic) IBOutlet UILabel *lblPrecioValue;
@property (weak, nonatomic) IBOutlet UIImageView *imgProductoValue;
@property int articulo;
@end
