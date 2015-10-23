//
//  MKImageOverlay.h
//  MapTrack
//
//  Created by Nick Blackwell on 2015-10-22.
//  Copyright © 2015 Nick Blackwell. All rights reserved.
//

#import <MapKit/MapKit.h>

@interface MKImageOverlay : NSObject<MKOverlay>
@property NSString *image;
@property float scale;
@property float north;
@property float south;
@property float east;
@property float west;
@property float rotation;


//@property (nonatomic, readonly) CLLocationCoordinate2D coordinate;
//@property (nonatomic, readonly) MKMapRect boundingMapRect;

-(void)setNorth:(float) n South:(float) s East:(float) e West:(float) w;



@end
