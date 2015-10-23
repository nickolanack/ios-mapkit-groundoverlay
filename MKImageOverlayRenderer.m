//
//  MKImageOverlayView.m
//  MapTrack
//
//  Created by Nick Blackwell on 2015-10-22.
//  Copyright © 2015 Nick Blackwell. All rights reserved.
//

#import "MKImageOverlayRenderer.h"
#import "MKImageOverlay.h"

@implementation MKImageOverlayRenderer




- (void)drawMapRect:(MKMapRect)mapRect zoomScale:(MKZoomScale)zoomScale inContext:(CGContextRef)context{
    
    MKImageOverlay *o=self.overlay;
    NSString *path=[[NSBundle mainBundle] pathForResource:o.image ofType:nil];

    UIImage *image = [UIImage imageWithContentsOfFile:path];
    CGImageRef imageReference = image.CGImage;
    
    MKMapRect theMapRect = [self.overlay boundingMapRect];
    CGRect theRect = [self rectForMapRect:theMapRect];

    CGPoint p=[self pointForMapPoint:MKMapPointForCoordinate(o.coordinate)];
    float angle=-M_PI*o.rotation/180.0;
    CGContextTranslateCTM(context, p.x, p.y);
    CGContextRotateCTM(context,  angle) ;
    CGContextTranslateCTM(context, -p.x, -p.y);
    //invert
    CGContextScaleCTM(context, 1.0, -1.0);
    CGContextTranslateCTM(context, 0.0, -theRect.size.height);
    //CGContextRotateCTM(context, (o.rotation/360.0)*M_PI);
    //CGContextRotateCTM(context, (o.rotation/360.0)*M_PI);
    
    
    
    CGContextDrawImage(context, theRect, imageReference);
}


@end
