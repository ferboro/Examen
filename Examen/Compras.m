//
//  Compras.m
//  Examen
//
//  Created by Luis on 8/28/16.
//  Copyright © 2016 Luis. All rights reserved.
//

#import "Compras.h"

@interface Compras ()
@property NSMutableArray *NombreProd;
@property NSMutableArray *Precio;
@property NSMutableArray *Imagen;
@end

@implementation Compras

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {
    self.NombreProd   = [[NSMutableArray alloc] initWithObjects: @"MONTBLANC TRADITION COLLECTION COLOR NEGRO", @"TUDOR HERITAGE CHRONOGRAPH COLOR ACERO", @"RELOJ SANDOZ ACERO CORREA", @"RELOJ FOSSIL CORREA ACERO", @"CALVIN KLEIN CLASSIC ACERO",nil];
    
    self.Imagen   = [[NSMutableArray alloc] initWithObjects: @"reloj01.jpg", @"reloj02.jpg", @"reloj03.jpg", @"reloj04.jpg", @"reloj05.jpg",nil];
    self.Precio = [[NSMutableArray alloc] initWithObjects: @"$220", @"$180", @"$490", @"$880", @"$750",nil];
}

/**********************************************************************************************/
#pragma mark - Table methods and delegates
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //return self.NombreProd.count;
    return 16;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 130;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellPagos *cell = (cellPagos *)[tableView dequeueReusableCellWithIdentifier:@"cellPagos"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellPagos" bundle:nil] forCellReuseIdentifier:@"cellPagos"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellPagos"];
    }
    
    
    //Fill cell with info from arrays
    cell.lblProducto.text   = self.NombreProd[indexPath.row];
    cell.lblPrecio.text   = self.Precio[indexPath.row];
    cell.imgProducto.image   = [UIImage imageNamed:self.Imagen[indexPath.row]];
    self.bntRow = (int)indexPath.row;
    
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame=CGRectMake(235,80,70,30);
    btn.tag =self.bntRow;
    [btn setTitle:@"Comprar" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState: UIControlStateNormal];
    [btn setBackgroundColor:[UIColor lightGrayColor]];
    [btn addTarget:self action:@selector(boton1:) forControlEvents:UIControlEventTouchUpInside];
    [cell.contentView addSubview:btn];
    return cell;
    
}
-(IBAction)boton1:(id)sender
{
    //NSString *test = [NSString stringWithFormat:@"botonazo %d", boton.tag];
    
    UIButton *boton = sender;
    self.bntRow =(int)boton.tag;
    [self performSegueWithIdentifier:@"Pagos" sender:self];
}


/**********************************************************************************************/
#pragma mark - Navigation
/*******************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    Pagos *results   = [segue destinationViewController];
    results.articulo      = self.bntRow;
}
@end
