// New hotness

// Functional programming!
let filteredTrains = trains?.filter({ $0.trainCategory == "Commuter" || $0.trainCategory == "Long-distance" }) ?? []

// Closures
doSomething(firstValue: 3, secondValue: 7) { $0 + $1 }

// Nested calls
myObject.theArray().insertObject(myObject.objectToInsert(), atIndex: 0)

