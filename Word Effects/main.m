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
            
            // remove /n
            NSString *strippedString = [inputString stringByReplacingOccurrencesOfString:@"\n" withString:@""];
            
            // print NSString object
            NSLog(@"Input was: %@", strippedString);
            
            
            
            // asks for number
            printf("Choose a number from 1 to 6: ");
            // scans for input
            fgets(inputNumber, 255, stdin);
            // converts input to NSString for processing later
            NSString *stringedNumber = [NSString stringWithUTF8String:inputNumber];
            // logs out input * at this point user can put in not a number. Problem to be solved.
            NSLog(@"Input number was: %@", stringedNumber);
            
            // convert input number to int
            int numberChosen = [stringedNumber intValue];
            
            switch (numberChosen) {
                case 1: {
                    // 1. UPPERCASE
                    NSString *upperCased = [strippedString uppercaseString];
                    NSLog(@"%@", upperCased);
                    break;
                }
                case 2: {
                    // 2. lowercase
                    NSString *lowerCased = [strippedString lowercaseString];
                    NSLog(@"%@", lowerCased);
                    break;
                }
                case 3: {
                    // 3. Numberize // if possible, convert string to number *problem atm. will convert non-numbers to "0"
                    int numberized = [strippedString intValue];
                    if (!numberized) {
                        NSLog(@"That was not a valid number");
                    } else {
                        
                        NSLog(@"%d", numberized);
                    }
                    break;
                }
                case 4: {
                    // 4. Canadianize // append , eh? to it
                    NSString *canadianized = [strippedString stringByAppendingString:@", eh?"];
                    NSLog(@"%@", canadianized);
                    break;
                }
                case 5: {
                    // 5. Respond // if ends with ?, say I don't know. If !, respond whoa, calm down!
                    NSString *questionMark = @"?";
                    NSString *exclaimationMark = @"!";
                    if ([strippedString hasSuffix:questionMark]) {
                        NSLog(@"I don't know");
                    }
                    else if ([strippedString hasSuffix:exclaimationMark]) {
                        NSLog(@"Whoa, calm down!");
                    } else {
                        NSLog(@"No drama");
                    }
                    break;
                }
                case 6: {
                    // 6. De-Space-It. // replace all space to ---
                    NSString *dashDashDash = [strippedString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
                    
                    NSLog(@"%@", dashDashDash);
                    break;
                }
                    
                default:
                    NSLog(@"Thats not a valid choice");
                    break;
            }
            
            
            
            
        }
        
    }
    return 0;
}
