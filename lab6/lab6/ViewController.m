//  ViewController.m

#import "ViewController.h"
#import "MyAnotation.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) MyAnotation *currentAnnotation;

- (IBAction)addAnotation:(id)sender;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.mapView.delegate = self;
    self.locationManager = [CLLocationManager new];
    self.locationManager.delegate = self;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    [self.locationManager requestWhenInUseAuthorization];
    self.mapView.showsUserLocation = YES;
}

- (void)locationManager:(CLLocationManager *)manager
didChangeAuthorizationStatus:(CLAuthorizationStatus)status {
    if (status == kCLAuthorizationStatusAuthorizedWhenInUse ||
        status == kCLAuthorizationStatusAuthorizedAlways) {
        [self.locationManager startUpdatingLocation];
    } else if (status == kCLAuthorizationStatusDenied) {
        NSLog(@"Location permission denied");
    }
}

- (void)locationManager:(CLLocationManager *)manager
     didUpdateLocations:(NSArray<CLLocation *> *)locations {
    CLLocation *currentLocation = locations.lastObject;
    CLLocationCoordinate2D coord = currentLocation.coordinate;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 1000, 1000);
    [self.mapView setRegion:region animated:YES];
    [self placeAnnotationAtCoordinate:coord
                                title:@"Current Location"
                             subtitle:@"You are here"];
    [self.locationManager stopUpdatingLocation];
}

- (void)placeAnnotationAtCoordinate:(CLLocationCoordinate2D)coord
                              title:(NSString *)title
                           subtitle:(NSString *)subtitle {
    if (self.currentAnnotation) {
        [self.mapView removeAnnotation:self.currentAnnotation];
    }
    self.currentAnnotation = [MyAnotation new];
    self.currentAnnotation.coordinate = coord;
    self.currentAnnotation.title = title;
    self.currentAnnotation.subtitle = subtitle;
    [self.mapView addAnnotation:self.currentAnnotation];
}

- (void)mapView:(MKMapView *)mapView regionWillChangeAnimated:(BOOL)animated {
    printf("regionWillChangeAnimated\n");
}

- (void)mapView:(MKMapView *)mapView regionDidChangeAnimated:(BOOL)animated {
    printf("regionDidChangeAnimated\n");
}

- (IBAction)addAnotation:(id)sender {
    CGPoint touchedPoint = [sender locationInView:_mapView];
    CLLocationCoordinate2D touchedLocation = [_mapView convertPoint:touchedPoint
                                               toCoordinateFromView:_mapView];
    [self placeAnnotationAtCoordinate:touchedLocation
                                title:@"Custom Annotation"
                             subtitle:@"details"];
}

@end
