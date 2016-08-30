//
//  ViewController.m
//  Examen
//
//  Created by Luis on 8/28/16.
//  Copyright © 2016 Luis. All rights reserved.
//

#import "Pagos.h"

@interface Pagos ()

@end

@implementation Pagos

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
- (void)initController {
    if (self.articulo == 0)
    {
        self.imgProductoValue.image = [UIImage imageNamed: @"blusa.jpg"];
        self.lblProductoValue.text = @"Blusa para dama";
        self.lblPrecioValue.text = @"220.00";
    }
    else if (self.articulo == 1)
    {
        self.imgProductoValue.image = [UIImage imageNamed: @"short.jpg"];
        self.lblProductoValue.text = @"Short";
        self.lblPrecioValue.text = @"180.00";
    }
    else if (self.articulo == 2)
    {
        self.imgProductoValue.image = [UIImage imageNamed: @"vestidoLargo.jpg"];
        self.lblProductoValue.text = @"Vestido de Noche";
        self.lblPrecioValue.text = @"490.00";
    }
    else if (self.articulo == 3)
    {
        self.imgProductoValue.image = [UIImage imageNamed: @"abrigo.jpg"];
        self.lblProductoValue.text = @"Abrigo";
        self.lblPrecioValue.text = @"880.00";
    }
    else if (self.articulo == 4)
    {
        self.imgProductoValue.image = [UIImage imageNamed: @"chamarra.jpg"];
        self.lblProductoValue.text = @"Chamarra";
        self.lblPrecioValue.text = @"750.00";
    }
    else if (self.articulo == 5)
    {
        self.imgProductoValue.image = [UIImage imageNamed: @"falda.jpg"];
        self.lblProductoValue.text = @"Falda";
        self.lblPrecioValue.text = @"230.00";
    }
    else if (self.articulo == 6)
    {
        self.imgProductoValue.image = [UIImage imageNamed: @"jeans.jpg"];
        self.lblProductoValue.text = @"Jeans";
        self.lblPrecioValue.text = @"350.00";
    }
    else if (self.articulo == 7)
    {
        self.imgProductoValue.image = [UIImage imageNamed: @"pantalon.jpg"];
        self.lblProductoValue.text = @"Pantalon de Vestir";
        self.lblPrecioValue.text = @"360.00";
    }
    else if (self.articulo == 8)
    {
        self.imgProductoValue.image = [UIImage imageNamed: @"sueter.jpg"];
        self.lblProductoValue.text = @"Sweter";
        self.lblPrecioValue.text = @"210.00";
    }
    else if (self.articulo == 9)
    {
        self.imgProductoValue.image = [UIImage imageNamed: @"vestidoDia.jpg"];
        self.lblProductoValue.text = @"Vestido de dia";
        self.lblPrecioValue.text = @"410.00";
    }
}

@end
