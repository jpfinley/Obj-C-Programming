//
//  JFAppDelegate.m
//  iTodo
//
//  Created by John Finley on 6/8/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import "JFAppDelegate.h"

// Helper function to get the path of the todo list.
NSString *docPath()
{
    NSArray *pathList = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                            NSUserDomainMask,
                                                            YES);
    return [[pathList objectAtIndex:0] stringByAppendingPathComponent:@"data.td"];
}

@implementation JFAppDelegate

#pragma mark - Application delegate callbacks

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Attempt to find the todo list and load it
    NSArray *plist = [NSArray arrayWithContentsOfFile:docPath()];
    if(plist) {
        // If the dataset is available. copy it into our instance
        tasks = [plist mutableCopy];
    } else {
        // Otherwise, just create an empty one
        tasks = [[NSMutableArray alloc] init];
    }
    
    // Is tasks empty?
    if ([tasks count] == 0) {
        // Put something in it
        [tasks addObject:@"Walk the dog"];
        [tasks addObject:@"eat some ice cream"];
        [tasks addObject:@"set up the home entertainment system"];
    }
    
    // Create and configure the UIWindow
    // A CGRect is a struct with an origin and size
    CGRect windowFrame = [[UIScreen mainScreen] bounds];
    UIWindow *theWindow = [[UIWindow alloc] initWithFrame:windowFrame];
    [self setWindow:theWindow];
    
    // Define the frame rectangles of the three UI elements
    // CGRectMake() creates a CGRect from a set of parameters
    CGRect tableFrame = CGRectMake(0, 80, 320, 380);
    CGRect fieldFrame = CGRectMake(20, 40, 200, 31);
    CGRect buttonFrame = CGRectMake(228, 40, 72, 31);
    
    // Create and configure the tableView
    taskTable = [[UITableView alloc] initWithFrame:tableFrame
                                             style:UITableViewStylePlain];
    [taskTable setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    
    // Make this object the tableView's dataSource
    [taskTable setDataSource:self];
    
    // Create and configure the text field
    taskField = [[UITextField alloc] initWithFrame:fieldFrame];
    [taskField setBorderStyle:UITextBorderStyleRoundedRect];
    [taskField setPlaceholder:@"Type a task, tap Insert"];
    
    // Set up the button
    insertButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [insertButton setFrame:buttonFrame];
    
    // Buttons behave using a target/action callback
    // Configure the button to call the -addTask method
    [insertButton addTarget:self
                     action:@selector(addTask:)
           forControlEvents:UIControlEventTouchUpInside];
    
    // Give the button a title
    [insertButton setTitle:@"Insert" forState:UIControlStateNormal];
    
    // Add the three UI elements to the window
    [[self window] addSubview:taskTable];
    [[self window] addSubview:taskField];
    [[self window] addSubview:insertButton];
    
    // Finalize the window and put it on the screen
    [[self window] setBackgroundColor:[UIColor whiteColor]];
    [[self window] makeKeyAndVisible];
    
    return YES;
}

#pragma mark - Table view Management

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Because this view has only one section,
    // the number of rows in it is equal to the
    // number of items in our task array
    return [tasks count];
}

- (void)addTask:(id)sender
{
    // Get the todo item to save
    NSString *t = [taskField text];
    
    // Give up if the taskfield is empty
    if ([t isEqualToString:@""]) {
        return;
    }
    
    // Add it to our working array
    [tasks addObject:t];
    
    // Refresh the table so the new item shows up
    [taskTable reloadData];
    
    // And clear out the text field
    [taskField setText:@""];
    
    // Dismiss the keyboard
    [taskField resignFirstResponder];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // To improve performance, we reconfigure cells in memory
    // that have scrolled off the screen and hand them back
    // with new contents instead of always creating new cells.
    // First, we check to see if there's a cell available for reuse.
    UITableViewCell *c = [taskTable dequeueReusableCellWithIdentifier:@"Cell"];
    
    if (!c) {
        // ... and only allocate a new cell if none are available
        c = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                   reuseIdentifier:@"Cell"];
    }
    
    // Then we reconfigure the cell based on the model object,
    // in this case our todoItems array
    NSString *item = [tasks objectAtIndex:[indexPath row]];
    [[c textLabel] setText:item];
    
    // and hand bacl to the table view the properly configured cell
    return c;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Save tasks to disk
    [tasks writeToFile:docPath() atomically:YES];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Save tasks to disk
    [tasks writeToFile:docPath() atomically:YES];
}

@end
