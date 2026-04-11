#import "ViewController.h"
#import <SDWebImage/SDWebImage.h>
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:@"https://yavuzceliker.github.io/sample-images/image-1.jpg"];

    [self.imgView sd_setImageWithURL:url
                      placeholderImage:[UIImage imageNamed:@"placeholder"]];
}


@end
