//
//  ViewController.m
//  Examen
//
//  Created by Luis on 8/28/16.
//  Copyright © 2016 Luis. All rights reserved.
//

#import "Start.h"
#import <GoogleMaps/GoogleMaps.h>
#import <CoreLocation/CoreLocation.h>


#define nLat@""
#define nLng@""

@interface Start ()

@end

@implementation Start{
    GMSMapView          *mapView_;
    GMSMarker           *markerLocation;
    GMSCameraPosition   *camera;
    CLLocationManager   *locationManager;
}
//@synthesize mapContainer;
NSString *latitud;
NSString *longitud;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nibs
    [self createMap];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createMap{
    // Create a GMSCameraPosition that tells the map to display the
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:21.887273
                                                            longitude:-102.203875
                                                                 zoom:6];
    mapView_ = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    mapView_.myLocationEnabled = YES;
    mapView_.delegate=self;
    self.view = mapView_;
    NSLog(@"Hello2");
}


/**********************************************************************************************/
#pragma mark - GMSMapViewDelegate
/**********************************************************************************************/
- (void)mapView:(GMSMapView *)mapView
didTapAtCoordinate:(CLLocationCoordinate2D)coordinate {
    NSLog(@"You tapped at %f,%f", coordinate.latitude, coordinate.longitude);
    latitud = [NSString stringWithFormat:@"%f", coordinate.latitude];
    longitud = [NSString stringWithFormat:@"%f", coordinate.longitude];
    
    //Creates a marker in the center of the map.
    GMSMarker *marker = [[GMSMarker alloc] init];
    marker.position = CLLocationCoordinate2DMake(coordinate.latitude, coordinate.longitude);
    //marker.title = @"Sydney";
    marker.snippet = @"Australia";
    marker.map = mapView_;
    
    [self queueLoadData];
}

/**********************************************************************************************/
#pragma mark - Task methods
/**********************************************************************************************/
- (void)queueLoadData {
    [UIApplication sharedApplication].networkActivityIndicatorVisible   = YES;
    //[self.activityLoad startAnimating];
    
    NSOperationQueue *queue         = [NSOperationQueue new];
    NSInvocationOperation *opGet    = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(loadData) object:nil];
    [queue addOperation:opGet];
    
    NSInvocationOperation *opDidGet = [[NSInvocationOperation alloc] initWithTarget:self selector:@selector(didLoadData) object:nil];
    [opDidGet addDependency:opGet];
    [queue addOperation:opDidGet];
}

//----------------------------------------------------------------------------------------------
- (void)loadData {
    mjsonGeo                        = [WebServices getWeatherWithLatitude:latitud AndLongitude:longitud];
    print(NSLog(@"mjsonGeo  = %@",mjsonGeo))
}
//----------------------------------------------------------------------------------------------
- (void)didLoadData {
    dispatch_async(dispatch_get_main_queue(), ^{
        ObjectResponse *object          = [Parser parseGeoObject];
        Coord *coordObject              = object.coord;
        float lat                       = coordObject.lat;
        float lng                       = coordObject.lon;
        NSString *stName                = object.name;
        MainObject *mainObject          = object.main;
        float tempCelsius               = mainObject.temp - 273.15;
        self.placeName = stName;
        //Weather *weatherObject          = object.weather;
        //NSString *stImage = weatherObject.icon;
        NSArray *test = (NSArray *)object.weather;
        //Weather *x = test.accessibilityElements[0];
        Weather *wImage = test[0];
        NSString *test2 = wImage.icon;
        //NSObject *ObImage = object.weather;
       
        
        self.placeTempMax = [NSString stringWithFormat:@"%f", mainObject.temp_max];
        self.placeTempMin = [NSString stringWithFormat:@"%f", mainObject.temp_min];
        self.placeHumedity = [NSString stringWithFormat:@"%f", mainObject.humidity];
        self.placeImg = test2;
        
        print(NSLog(@"We are at %@ with latitude %f and longitude %f",stName, lat, lng))
        [UIApplication sharedApplication].networkActivityIndicatorVisible   = NO;
        
        [self performSegueWithIdentifier:@"MapResults" sender:self];
    });
}

/**********************************************************************************************/
#pragma mark - Navigation
/*******************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    MapResults *results     = [segue destinationViewController];
    results.lblCityV         = self.placeName;
    results.lblTempMi = self.placeTempMin;
    results.lblTempMa = self.placeTempMax;
    results.lblHum = self.placeHumedity;
    results.lblImg = self.placeImg;
    
}

@end
