//
//  NYCStack.m
//  RPNCalculator
//
//  Created by Nathanael Youngren on 4/4/19.
//  Copyright © 2019 Nathanael Youngren. All rights reserved.
//

#import "NYCStack.h"

@interface NYCStack () {
    NSMutableArray *values;
}

@end

@implementation NYCStack

- (instancetype)initWithArray:(NSArray *)array {
    
    self = [super init];
    if (self) {
        values = [array mutableCopy];
    }
    return self;
}

- (void)push:(id)object {
    [values addObject:object];
}

- (id)pop {
    id lastObject = [[values lastObject] copy];
    [values removeLastObject];
    return lastObject;
}

- (id)peek {
    return [values lastObject];
}

@end
