//
//  ViewController.h
//  day16ios_locationusingGeo
//
//  Created by Student 01 on 27/09/17.
//  Copyright © 2017 mohini. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet MKMapView *myMapView;
@property (weak, nonatomic) IBOutlet UITextField *addressText;


- (IBAction)detectButton:(id)sender;


@end

