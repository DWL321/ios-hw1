//
//  UpperGarment.m
//  HW1
//
//  Created by dwl on 2021/9/23.
//  Copyright © 2021 dwl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UpperGarment.h"

@implementation UpperGarment

-(bool)check:(NSInteger)date{
    if(date-self->_date<3&&self->_date!=0)return false;
    else return true;
}

@end
