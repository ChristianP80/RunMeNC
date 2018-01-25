//
//  Formulas.m
//  RunMeNC
//
//  Created by lösen är 0000 on 2018-01-25.
//  Copyright © 2018 Mani Sedighi. All rights reserved.
//

#import "Formulas.h"

@implementation Formulas

+(double)convertTime:(double)hours minutes:(double)minutes {
    double totalHours = minutes/60;
    totalHours += hours;
    return totalHours;
}

+(double)avgSpeed:(double)distance time:(double)totalhours{
    double avgSpeed = distance / totalhours;
    return avgSpeed;
}

@end
