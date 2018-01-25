//
//  Formulas.h
//  RunMeNC
//
//  Created by lösen är 0000 on 2018-01-25.
//  Copyright © 2018 Mani Sedighi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Formulas : NSObject
+(double)convertTime:(double)hours minutes:(double)minutes;
+(double)avgSpeed:(double)distance time:(double)totalhours;
@end
