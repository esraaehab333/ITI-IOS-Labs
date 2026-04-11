#import "ViewController.h"
#import "Product.h"
#import "ProductCell.h"

@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.products = [NSMutableArray new];
    self.responseData = [NSMutableData new];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.rowHeight = 100;
    
    [self fetchProducts];
}

- (void)fetchProducts {
    NSURL *url = [NSURL URLWithString:@"https://dummyjson.com/products"];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    NSURLConnection *connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    [connection start];
}

- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response {
    [self.responseData setLength:0];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data {
    [self.responseData appendData:data];
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection {
    NSError *error;
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:self.responseData options:0 error:&error];
    
    if (error) {
        return;
    }
    NSArray *productsArray = json[@"products"];
    for (NSDictionary *item in productsArray) {
        Product *product = [Product new];
        product.title = item[@"title"];
        product.thumbnail = item[@"thumbnail"];
        [self.products addObject:product];
    }
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.products.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ProductCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    Product *product = self.products[indexPath.row];
    cell.productTitle.text = product.title;
    cell.productTitle.numberOfLines = 0;
    cell.productImage.image = nil;
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSURL *url = [NSURL URLWithString:product.thumbnail];
        NSData *data = [NSData dataWithContentsOfURL:url];
        UIImage *image = [UIImage imageWithData:data];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            ProductCell *currentCell = [tableView cellForRowAtIndexPath:indexPath];
            if (currentCell) {
                currentCell.productImage.image = image;
            }
        });
    });
    
    return cell;
}

@end
