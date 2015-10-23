//
//  MKImageOverlay.m
//  MapTrack
//
//  Created by Nick Blackwell on 2015-10-22.
//  Copyright © 2015 Nick Blackwell. All rights reserved.
//

#import "MKImageOverlay.h"
@interface MKImageOverlay ()

//@property MKMapRect mrect;
//@property CLLocationCoordinate2D center;
@end




@implementation MKImageOverlay


@synthesize scale, rotation, image, coordinate, boundingMapRect;



-(void)setNorth:(float)n South:(float)s East:(float)e West:(float)w{
    
    self.north=n;
    self.south=s;
    self.east=e;
    self.west=w;
    
    
    MKMapPoint upperLeft = MKMapPointForCoordinate(CLLocationCoordinate2DMake(n, w));
    MKMapPoint lowerLeft = MKMapPointForCoordinate(CLLocationCoordinate2DMake(s, w));
    MKMapPoint upperRight = MKMapPointForCoordinate(CLLocationCoordinate2DMake(n, e));
 
    
    //self.mrect=    self.center=
    boundingMapRect= MKMapRectMake(upperLeft.x, upperLeft.y, fabs(upperLeft.x - upperRight.x), fabs(upperLeft.y - lowerLeft.y));
    coordinate=CLLocationCoordinate2DMake((n+s)/2.0,(w+e)/2.0);

                                       
}

-(NSArray *)points{

   
    
    return @[];
}

-(int)pointCount{
    
    return 0;
}


@end
