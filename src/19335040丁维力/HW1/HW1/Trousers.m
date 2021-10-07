//
//  Trousers.m
//  HW1
//
//  Created by dwl on 2021/9/23.
//  Copyright © 2021 dwl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Trousers.h"

@implementation Trousers

-(bool)check:(NSInteger)date{
    if(date-self->_date==1&&self->_date!=0)return false;
    else return true;
}

@end
