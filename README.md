FUUMultiModalPickerView
=================

A custom view component that presents a UIPickerView with a list of options, 
along with a toolbar for Done/Cancel and a faded backdrop view.
It is implemented as a subclass to [BSModalPickerView](https://github.com/subdigital/BSModalPickerView/) and extends it to support more than one component within an UIPickerView.

If you need only ONE wheel, you should use [BSModalPickerView](https://github.com/subdigital/BSModalPickerView/) instead, because it is easier to handle in that case.

Btw: Thanks to [subdigital](https://github.com/subdigital) for the great work on [BSModalPickerView](https://github.com/subdigital/BSModalPickerView/)

## Usage

Usage is easy:

Add the dependency to your `Podfile`:

```ruby
platform :ios
pod 'FUUMultiModalPickerView'
...
```

Run `pod install` to install the dependencies.

Next, import the header file wherever you want to use the picker:

```objc
#import "FUUMultiModalPickerView.h"
```

Finally, present the picker when necessary (say on a button touch handler):

```objc
NSArray *component1 = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", nil];
NSArray *component2 = [[NSArray alloc] initWithObjects:@"a", @"b", @"c", nil];
NSArray *values = [[NSArray alloc] initWithObjects:component1, component2, nil];

FUUMultiModalPickerView *picker = [[FUUMultiModalPickerView alloc] initWithValues:values];
[picker presentInView:self.view withBlock:^(BOOL madeChoice) {
  if (madeChoice) {
    NSLog(@"You chose index %@, which was the value %@", 
      picker.selectedIndices,
      picker.selectedValues);
  } else {
    NSLog(@"You cancelled the picker");
  }
}];
```

## Requirements

`FUUMultiModalPickerView` requires iOS 4.x or greater.

## Implicit Requirements

Dependency to Pod 'BSModalPickerView' is included

## License

Usage is provided under the [MIT License](http://http://opensource.org/licenses/mit-license.php).  See LICENSE for the full details.
