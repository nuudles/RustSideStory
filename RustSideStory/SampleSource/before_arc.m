// Before ARC...

- (void)viewDidLoad {
	[super viewDidLoad];

	UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 200, 30)]; // RC + 1 = 1
	[self.view addSubview:label]; // RC + 1 = 2
	[label release]; // RC - 1 = 1
	// Also valid: [label autorelease];
}
