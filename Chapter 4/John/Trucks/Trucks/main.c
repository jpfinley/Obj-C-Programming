//
//  main.c
//  Trucks
//
//  Created by John Finley on 1/3/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    float truckWeight = 34563.8;
    
//    // Is it under the limit?
//
//    if (truckWeight < 40000.0) {
//        printf("It is a light truck\n");
//    }
//    else {
//        printf("It is a heavy truck\n");
//    }

    
    
//    // Is the truck within the range?
//
//    if ((truckWeight > 0.0) && (truckWeight < 40000.0)) {
//        printf("Truck weight is within legal range.\n");
//    }

    
    
//    // Is the truck NOT within the legal range?
//    
//    if (!(truckWeight > 0.0) && (truckWeight < 40000.0)){
//        printf("The truck weight is NOT within the normal limit.\n");
//    }
//    else {
//        printf("The truck weight is within the normal limit.\n");
//    }


    
//    // BOOL
//    
//    // I'm not able to get the BOOL type to compile
//    BOOL isNotLegal = !((truckWeight > 0.0) && (truckWeight < 40000.0));
//    if(isNotLegal){
//        printf("The truck weight is NOT within the normal limit.\n");
//    }


    
    // elseIf
    
    if(truckWeight <= 0.0){
        printf("The truck is floating.\n");
    }
    else if (truckWeight < 40000.0){
        printf("The truck is light.\n");
    }
    else if (truckWeight > 40000.0){
        printf("The truck is heavy.\n");
    }
}
