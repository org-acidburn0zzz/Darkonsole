/*******************************************************************************
 * The MIT License (MIT)
 * 
 * Copyright (c) 2015 Jean-David Gadina - www-xs-labs.com
 * 
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 * 
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 * 
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 ******************************************************************************/

#import "ASLSender.h"

@interface ASLSender()

@property( atomic, readwrite, strong ) NSString * name;
@property( atomic, readwrite, strong ) NSString * facility;
@property( atomic, readwrite, strong ) NSImage  * icon;

@end

@implementation ASLSender

- ( instancetype )init
{
    return [ self initWithName: @"" facility: @"" ];
}

- ( instancetype )initWithName: ( NSString * )name facility: ( NSString * )facility
{
    if( ( self = [ super init ] ) )
    {
        self.name     = name;
        self.facility = facility;
    }
    
    return self;
}

- ( instancetype )copyWithZone: ( NSZone * )zone
{
    return [ [ ASLSender alloc ] initWithName: self.name facility: self.facility ];
}

- ( BOOL )isEqual: ( id )object
{
    return [ self.name isEqual: object ];
}

- ( BOOL )isEqualTo: ( id )object
{
    return [ self.name isEqualTo: object ];
}

- ( NSUInteger )hash
{
    return self.name.hash;
}

@end
