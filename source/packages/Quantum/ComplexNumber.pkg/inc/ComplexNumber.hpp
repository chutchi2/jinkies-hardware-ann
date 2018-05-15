/*------------------------------------------------------------------------------
 Filename: ComplexNumbers.hpp

 Description:
 Program entry point.
 ------------------------------------------------------------------------------*/
#ifndef ComplexNumbers_hpp
#define ComplexNumbers_hpp

#include <iostream>

class ComplexNumber
{
public:
    //-----------------------------------------------------------------------------
    ComplexNumber( double real, double imaginary );

    //-----------------------------------------------------------------------------
    ComplexNumber();

    //-----------------------------------------------------------------------------
    void set( double real, double imaginary );

    //-----------------------------------------------------------------------------
    void setReal( double real );

    //-----------------------------------------------------------------------------
    double getReal();

    //-----------------------------------------------------------------------------
    void setImaginary( double imaginary );

    //-----------------------------------------------------------------------------
    double getImaginary();

    //-----------------------------------------------------------------------------
    bool equals( ComplexNumber cNum );

    //-----------------------------------------------------------------------------
    std::string toString();

    //-----------------------------------------------------------------------------
    double getArg();

private:
    // Member Variables
    double m_imaginary;
    double m_real;

};

#endif
