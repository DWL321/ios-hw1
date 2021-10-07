//
//  Clothing.m
//  HW1
//
//  Created by dwl on 2021/9/23.
//  Copyright © 2021 dwl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Clothing.h"

@implementation Clothing
-(id)init{
    self->_date=0;
    return self;
}
-(void)setType:(NSString*)type{
    self->_type=type;
}

-(NSString*)type{
    return self->_type;
}

-(void)setColor:(NSString*)color{
    self->_color=color;
}

-(NSString*)color{
    return self->_color;
}

-(void)setDepth:(NSInteger)depth{
    self->_depth=depth;
}

-(NSInteger)depth{
    return self->_depth;
}

-(void)setDate:(NSInteger)date{
    self->_date=date;
}

-(NSInteger)date{
    return self->_date;
}

@end
