//
//  main.c
//  ClassCertificates
//
//  Created by John Finley on 1/5/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

void congratualteStudent(char *student, char *course, int numDays){
    printf("%s has done as much %s Programming as I could fit into %d days.\n", student, course, numDays);
}

int main(int argc, const char * argv[])
{

    congratualteStudent("Mark", "Cocoa", 5);
    sleep(2);
    congratualteStudent("Bo", "Objective-C", 2);
    sleep(2);
    congratualteStudent("Mike", "Python", 5);
    sleep(2);
    congratualteStudent("Ted", "iOS", 5);

    return 0;
}
