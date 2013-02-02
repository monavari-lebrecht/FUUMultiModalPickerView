//
//  FUUMultiModalPickerView.m
//  fit-u-up
//
//  Created by Constantin Lebrecht on 02.02.13.
//  Copyright (c) 2013 Constantin Lebrecht. All rights reserved.
//

#import "FUUMultiModalPickerView.h"

@interface BSModalPickerView ()
- (UIPickerView *)picker;
@end

@interface FUUMultiModalPickerView () {
    UIPickerView *_picker;
    UIToolbar *_toolbar;
    UIView *_panel;
    UIView *_backdropView;
}
@property (nonatomic, strong) BSModalPickerViewCallback callbackBlock;
@end

@implementation FUUMultiModalPickerView

@synthesize selectedIndices, selectedValues;

- (NSArray*)selectedValues {
    NSMutableArray *values = [[NSMutableArray alloc] init];
    for (int i=0; i<[self.selectedIndices count]; i++) {
        NSString* value = [[self.values objectAtIndex:i] objectAtIndex:[[self.selectedIndices objectAtIndex:i] integerValue]];
        [selectedValues insertObject:value atIndex:i];
    }
    return values;
}

- (UIPickerView *)picker {
    // get nromal picker of super class
    UIPickerView *picker = [super picker];
    // selected multiple rows
    for (int i=0; i<[self.selectedIndices count]; i++) {
        [picker selectRow:[[self.selectedIndices objectAtIndex:i] integerValue] inComponent:i animated:NO];
    }
    return picker;
}

- (void)setSelectedIndex:(NSUInteger)selectedIndex inComponent:(NSUInteger)component {
    // TODO: get component in values array first...
    selectedIndex = selectedIndex;
    if (_picker) {
        [_picker selectRow:selectedIndex inComponent:component animated:YES];
    }
}

- (void)setSelectedValue:(NSString *)selectedValue inComponent:(NSUInteger)component {
    // TODO: get component in values array first...
    
    NSInteger index = [self.values indexOfObject:selectedValue];
    [self setSelectedIndex:index];
}

#pragma mark - Picker View

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return [self.values count];
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return [[self.values objectAtIndex:component] count];
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return [[self.values objectAtIndex:component] objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    [self.selectedIndices replaceObjectAtIndex:component withObject:[NSNumber numberWithInt:row]];
}


@end
