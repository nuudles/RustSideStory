// Old and busted

// Not so functional programming
NSMutableArray *filteredTrains = [NSMutableArray array];
for (Train *train in trains) {
    if ([train.trainCategory isEqualToString:@"Commuter"] || 
        [train.trainCategory isEqualToString:@"LongDistance"]) {
        [filteredTrains addObject:train];
    }
}

// Closures
[self doSomethingWithFirstValue:3
                    secondValue:7
                          block:^(int firstValue, int secondValue) {
    return firstValue + secondValue;
}];

// Nested calls
[[myObject theArray] insertObject:[myObject objectToInsert] atIndex:0];
