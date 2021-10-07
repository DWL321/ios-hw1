//
//  Clothing.h
//  HW1
//
//  Created by dwl on 2021/9/23.
//  Copyright © 2021 dwl. All rights reserved.
//

#ifndef Clothing_h
#define Clothing_h

#import <Foundation/Foundation.h>

@interface Clothing : NSObject {
    NSString* _type;
    NSString* _color;
    NSInteger _depth;
    NSInteger _date;
};

-(void) setType:(NSString*) type;
-(NSString*) type;

-(void) setColor:(NSString*) color;
-(NSString*) color;

-(void) setDepth:(NSInteger) depth;
-(NSInteger) depth;

-(void) setDate:(NSInteger) date;
-(NSInteger) date;

@end

#endif /* Clothing_h */
