import UIKit

var greeting = "Hello, playground"
func checkLockStatement() {
let lock1 = NSLock()
let lock2 = NSLock()
DispatchQueue.global().async {
        lock1.lock()
        sleep(1)
        lock2.lock()
        
        print("Thread 1")
        
        lock2.unlock()
        lock1.unlock()
    }
    
    DispatchQueue.global().async {
        lock1.lock()
        sleep(1)
        lock2.lock()
        
        print("Thread 2")
        
        lock1.unlock()
        lock2.unlock()
    }
}
let x: Int = 5
if x is Double {
    print(x)
}
else {
    print("data is not suitable")
}
