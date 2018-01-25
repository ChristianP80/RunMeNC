//
//  ViewController.m
//  RunMeNC
//
//  Created by Mani Sedighi on 25/01/2018.
//  Copyright © 2018 Mani Sedighi. All rights reserved.
//

#import "ViewController.h"
#import "Formulas.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *hours;
@property (weak, nonatomic) IBOutlet UITextField *minutes;
@property (weak, nonatomic) IBOutlet UITextField *distance;
@property (weak, nonatomic) IBOutlet UILabel *speed;

@end

@implementation ViewController


- (IBAction)calculate:(id)sender {
    
    double totalHours = [Formulas convertTime:self.hours.text.doubleValue minutes:self.minutes.text.doubleValue];
    double endResult = [Formulas avgSpeed:self.distance.text.doubleValue time:totalHours];
    self.speed.text = [NSString stringWithFormat:@"%f", endResult];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
