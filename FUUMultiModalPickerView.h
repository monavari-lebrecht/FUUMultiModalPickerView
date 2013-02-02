//
//  FUUMultiModalPickerView.h
//  fit-u-up
//
//  Created by Constantin Lebrecht on 02.02.13.
//  Copyright (c) 2013 Constantin Lebrecht. All rights reserved.
//

#import "BSModalPickerView.h"

@interface FUUMultiModalPickerView : BSModalPickerView

@property (nonatomic, assign) NSMutableArray *selectedIndices;
@property (nonatomic, assign) NSMutableArray *selectedValues;

@end
