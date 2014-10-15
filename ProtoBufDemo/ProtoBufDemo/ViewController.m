//
//  ViewController.m
//  ProtoBufDemo
//
//  Created by Sword on 10/15/14.
//  Copyright (c) 2014 Sword. All rights reserved.
//

#import "ViewController.h"
#import "Addressbook.pb.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    Person_Builder *builder = [[Person_Builder alloc] init];
    [builder setName:@"sword"];
    [builder setId:12];
    [builder setEmail:@"hjzhou@isoftstone.com"];
    Person *person = [builder build];
//
    NSLog(@"send person name:%@ userid %d email %@", person.name, person.id, person.email);
    
    Person_Builder *builder2 = [[Person_Builder alloc] init];
    [builder2 setName:@"sword1"];
    [builder2 setId:13];
    [builder2 setEmail:@"hjzhou@isoftstone.co2m"];
    
    Person *person2 = [builder2 build];
    //
    NSLog(@"send person2 name:%@ userid %d email %@", person2.name, person2.id, person2.email);

    
//
    NSData *personData = [person data];
    Person *receivePerson = [Person parseFromData:personData];
    NSLog(@"receive person name:%@ userid %d email %@", receivePerson.name, receivePerson.id, receivePerson.email);
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
