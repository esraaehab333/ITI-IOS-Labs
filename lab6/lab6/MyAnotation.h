//
//  MyAnotation.h
//  lab6
//
//  Created by ZATER on 4/11/26.
//  Copyright © 2026 ZATER. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyAnotation : NSObject<MKAnnotation>
// step 1 : add the property
@property (nonatomic) CLLocationCoordinate2D coordinate;
@property (nonatomic ,copy) NSString *title;
@property (nonatomic, copy) NSString *subtitle;

@end

NS_ASSUME_NONNULL_END
