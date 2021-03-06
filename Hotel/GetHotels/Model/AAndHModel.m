//
//  AAndHModel.m
//  GetHotels
//
//  Created by ll on 2017/8/24.
//  Copyright © 2017年 Yixin studio. All rights reserved.
//

#import "AAndHModel.h"

@implementation AAndHModel

- (instancetype)initWithDictForHotelCell:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        self.hotelName = [Utilities nullAndNilCheck:dict[@"hotel_name"] replaceBy:@"暂无"];
        self.hotelAdd = [Utilities nullAndNilCheck:dict[@"hotel_address"] replaceBy:@"未知"];
        NSInteger dis = [[Utilities nullAndNilCheck:dict[@"distance"] replaceBy:0] integerValue];
        self.distance = dis/100000.00;
        self.hotelPrice = [Utilities nullAndNilCheck:dict[@"price"] replaceBy:@"未知"];
        self.hotelImg = [Utilities nullAndNilCheck:dict[@"hotel_img"] replaceBy:@""];
        self.hotelId = [[Utilities nullAndNilCheck:dict[@"id"] replaceBy:0] integerValue];
        
    }
    return self;
}


- (instancetype)initWithDictForAD:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        self.adName = [Utilities nullAndNilCheck:dict[@"ad_name"] replaceBy:@"暂无"];
        self.adImg = [Utilities nullAndNilCheck:dict[@"ad_img"] replaceBy:@"123"];
        self.adUrl = [Utilities nullAndNilCheck:dict[@"ad_url"] replaceBy:@""];
        self.adId = [[Utilities nullAndNilCheck:@"id" replaceBy:@""] integerValue];
    }
    return self;
}

@end
