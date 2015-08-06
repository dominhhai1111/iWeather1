//
//  ViewController.m
//  iWeather
//
//  Created by Do Minh Hai on 7/30/15.
//  Copyright (c) 2015 Do Minh Hai. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *location;
@property (weak, nonatomic) IBOutlet UIButton *temperature;
@property (weak, nonatomic) IBOutlet UIImageView *weathericon;
@property (weak, nonatomic) IBOutlet UILabel *quote;
@property (weak, nonatomic) IBOutlet UILabel *typedegrees;

@end

@implementation ViewController
{
    NSArray* quotes;
    NSArray* locations;
    NSArray* photofiles;

   
    __weak IBOutlet UIButton *temperatures;
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    quotes= @[@"Đi một ngày đàng, học một sàng khôn", @"Chớ thấy sóng cả mà ngã tay chèo", @"Một con ngựa đau cả tàu bỏ cỏ"];
    locations = @[@"Hai Ba Trung, Hanoi", @"Sydney, Australia", @"New York, USA"];
    
    photofiles = @[@"rain", @"sun", @"thunder", @"wind"];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)update:(id)sender
{
    int quoteIndex = arc4random_uniform(quotes.count);
    NSLog(@"%d", quoteIndex);
    self.quote.text = quotes[quoteIndex];
    
    int locationIndex = arc4random_uniform(locations.count);
    self.location.text = locations[locationIndex];
    
    int photoIndex = arc4random_uniform(photofiles.count);
    self.weathericon.image = [UIImage imageNamed:photofiles[photoIndex]];
    
    NSString* string = [NSString stringWithFormat:@"%2.1f", [self getTemperature]];
  [self.temperature setTitle:string forState:UIControlStateNormal];
}
- (IBAction)Change:(id)sender {
    
    if([typedegree.text isEqualToString:@"c"]) {
        typedegree.text = @"k" ;
        degree.text = @" ";
    float i = ([_temperature.currentTitle floatValue ] +273);
 
    NSString* string1 = [NSString stringWithFormat:@"%2.1f", i ];
    [self.temperature setTitle:string1 forState:UIControlStateNormal];
    }
    else
    { typedegree.text = @"c" ;
        degree.text = @"o";
        float i = ([_temperature.currentTitle floatValue ] -273);
        
        NSString* string1 = [NSString stringWithFormat:@"%2.1f", i ];
        [self.temperature setTitle:string1 forState:UIControlStateNormal];
        
    }
  }
- (float) getTemperature {
        float a = 14.0 + arc4random_uniform(18) + (float)arc4random() /(float) INT32_MAX;
    
    return a;
}



@end
