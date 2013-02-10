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

void bodyMassCalc (Person p)
{
    float bmi = bodyMassIndex(p);
    printf("person has a BMI of %.2f\n", bmi);
}

int main(int argc, const char * argv[])
{

    Person personOne, personTwo;
    personOne.weightInKilos = 96;
    personOne.heightInMeters = 1.8;
    personTwo.weightInKilos = 267;
    personTwo.heightInMeters = 1.34;
    bodyMassCalc(personOne);
    bodyMassCalc(personTwo);
    return 0;
}

