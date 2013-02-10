//
//  main.c
//  BMICalc
//
//  Created by Jeff Kirsch on 2/9/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#include <stdio.h>

//Here is the declaration of the struct Person

typedef struct {
    float heightInMeters;
    int weightInKilos;
} Person;

float bodyMassIndex(Person p)
{
    return p.weightInKilos / (p.heightInMeters * p.heightInMeters);
}

int main(int argc, const char * argv[])
{

    Person personOne, personTwo;
    personOne.weightInKilos = 96;
    personOne.heightInMeters = 1.8;
    personTwo.weightInKilos = 267;
    personTwo.heightInMeters = 1.34;
    float bmiOne = bodyMassIndex(personOne);
    float bmiTwo = bodyMassIndex(personTwo);
    printf("person one has a BMI of %.2f\n", bmiOne);
    printf("person two has a BMI of %.2f\n", bmiTwo);
    return 0;
}

