//
//  ViewController.m
//  day16ios_locationusingGeo
//
//  Created by Student 01 on 27/09/17.
//  Copyright © 2017 mohini. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)detectButton:(id)sender
{
    NSString *location=self.addressText.text;
    CLGeocoder *geocoder=[[CLGeocoder alloc]init];
    [geocoder geocodeAddressString:location completionHandler:^(NSArray<CLPlacemark *> * _Nullable placemarks, NSError * _Nullable error) {
        if(placemarks &&placemarks.count>0)
        {
            CLPlacemark *topResult =[placemarks objectAtIndex:0];
            MKPlacemark *placemark =[[MKPlacemark alloc]initWithPlacemark:topResult];
            
            MKCoordinateRegion region =self.myMapView.region;
            region.center = placemark.region.center;
            region.span.longitudeDelta /=8.0;
             region.span.latitudeDelta /=8.0;
            
            [self.myMapView setRegion:region animated:YES];
            [self.myMapView addAnnotation:placemark];
        }
    }];
}
@end
