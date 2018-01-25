//
//  ViewController.m
//  RunMeNC
//
//  Created by Mani Sedighi on 25/01/2018.
//  Copyright © 2018 Mani Sedighi. All rights reserved.
//

#import "ViewController.h"
#import "Formulas.h"
#import "ResultsTableViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *hours;
@property (weak, nonatomic) IBOutlet UITextField *minutes;
@property (weak, nonatomic) IBOutlet UITextField *distance;
@property (weak, nonatomic) IBOutlet UILabel *speed;


@end

@implementation ViewController


- (IBAction)calculate:(id)sender {

//    NSString *distanceRunned = self.distance.text;
    
    double totalHours = [Formulas convertTime:self.hours.text.doubleValue minutes:self.minutes.text.doubleValue];
    
//    NSString *totHours = [NSString stringWithFormat:@"%.02f", totalHours];
    
    double endResult = [Formulas avgSpeed:self.distance.text.doubleValue time:totalHours];
    
    NSString *endRes = [NSString stringWithFormat:@"You ran %@ km on %.02f and your avarage speed was %.02f km/h", self.distance.text, totalHours, endResult];
    
    self.speed.text = [NSString stringWithFormat:@"%.02f", endResult];
    
    [self.runs addObject:endRes];
    [[NSUserDefaults standardUserDefaults] setObject:self.runs forKey:@"runsArray"];
//    [[NSUserDefaults standardUserDefaults] setDouble:totalHours forKey:@"TableviewTotalHours"];
//    [[NSUserDefaults standardUserDefaults] setDouble:self.distance.text.doubleValue forKey:@"TableVoiewDistance"];


}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    self.runs = [[NSUserDefaults standardUserDefaults] objectForKey:@"runsArray"];
    ResultsTableViewController *resultsTableViewController = [segue destinationViewController];
    resultsTableViewController.resultOfRuns = self.runs;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    if (!self.runs) {
        self.runs = @[].mutableCopy;
    }
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
