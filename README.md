# ios-mapkit-groundoverlay
objective c libraries for rendering kml ground overlays, which also include rotation

here is a simplified usage example.

```obj-c


	#import "MKImageOverlay.h"
	#import "MKImageOverlayRenderer.h"

	@interface ViewController ()
	@property MKMapView *mapView; //this would actually be an IBOutlet in ViewController.h
	@end

	@implementation ViewController


	- (void)viewDidLoad {
	
    	[super viewDidLoad];
    	[self.mapView setDelegate:self];
    	
    	[self addExampleGroundOverlay]

	}
	
	-(MKOverlayRenderer *)mapView:(MKMapView *)mapView rendererForOverlay:(id<MKOverlay>)overlay{
	
	    if([overlay isKindOfClass:[MKImageOverlay class] ]){
	        // this is my custom image overlay class
	        MKImageOverlayRenderer *p=[[MKImageOverlayRenderer alloc] initWithOverlay:overlay];
	        [p setAlpha:0.5];
	        return p;
	    
	    }else{
	    
	    	// ...
	    
	    }
	    
	
	}
	
	//...
	
	-(void)addExampleGroundOverlay{
	
		//mapView *MKMapView
	    //float north;
	    //float south;
	    //float east;
	    //float west;
		
		MKImageOverlay *o=[[MKImageOverlay alloc] init];
	   
	    NSString *image=@"imageoverlay.png"; //image file in your project
	    
	    [o setImage:image];
	    [o setRotation:0.5];
	    [o setScale:0.75]; //this is not used, It doesn't seem to make a difference
	    [o setNorth:north South:south East:east West:west];
	
	    [self.mapView addOverlay:o];
	
	}
	
	//...
	
	@end

```
