//
//  Compras.h
//  Examen
//
//  Created by Luis on 8/28/16.
//  Copyright © 2016 Luis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cellPagos.h"
#import "Pagos.h"

@interface Compras : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tblCompras;
@property int index;
@property int bntRow;

@end
