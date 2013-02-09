//
//  main.c
//  BMICalc
//
//  Created by John Finley on 2/9/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#include <stdio.h>

// Make a Person struct
typedef struct {
    int weightInKilos;
    float heightInMeters;
} Person;

float bodyMassIndex(Person person)
{
    // BMI is calulated as your weight in kilograms divided by the square of your height in meters.
    return person.weightInKilos / (person.heightInMeters * person.heightInMeters);
}

int main(int argc, const char * argv[])
{
    Person john;
    john.heightInMeters = 1.8;
    john.weightInKilos = 96;
    
    printf("John has a hieght in meters of %f \n", john.heightInMeters);
    printf("John has a weight in kilograms of %d \n", john.weightInKilos);
    printf("John has a Body Mass Index of %f \n", bodyMassIndex(john));
    
    return 0;
}

