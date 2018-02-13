//
//  main.m
//  Word Effects
//
//  Created by Nathan Hsu on 2018-02-12.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 255 unit long array of characters
        while (1==1) {
            char inputChars[255];
            char inputNumber[255];
            
            printf("Input a string: ");
            // limit input to max 255 characters
            fgets(inputChars, 255, stdin);
            
            // print as a c string
            printf("Your string is %s\n", inputChars);
            
            // convert char array to an NSString object
            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            
            // print NSString object
            NSLog(@"Input was: %@", inputString);
            
            
            
            // asks for number
            printf("Choose a number from 1 to 6: ");
            // scans for input
            fgets(inputNumber, 255, stdin);
            // converts input to NSString for processing later
            NSString *stringedNumber = [NSString stringWithUTF8String:inputNumber];
            // logs out input * at this point user can put in not a number. Problem to be solved.
            NSLog(@"Input number was: %@", stringedNumber);
        }
        
    }
    return 0;
}
