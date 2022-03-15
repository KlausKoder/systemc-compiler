/******************************************************************************
* Copyright (c) 2020, Intel Corporation. All rights reserved.
* 
* SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception.
* 
*****************************************************************************/

#include "systemc.h"
#include <sct_assert.h>
#include <iostream>
#include <string>

using namespace sc_core;

#define CHECK(ARG) sct_assert(ARG); sct_assert_const(ARG);

// Member function calls evaluation as constant
struct A : sc_module 
{
    SC_HAS_PROCESS(A);
    
    sc_signal<int> s1{"s1"};
    sc_signal<int> s2{"s2"};
    int t1;
    int t2;
    int t3;
    unsigned* pu;
    unsigned* qu;
    
    A(const sc_module_name& name) : sc_module(name) 
    {
        pu = sc_new<unsigned>();
        qu = sc_new<unsigned>();
        
        SC_METHOD(const_eval1); sensitive << s1;
        SC_METHOD(const_eval2); sensitive << s1;

        SC_METHOD(non_const_eval1); sensitive << s2;
        SC_METHOD(non_const_eval2); sensitive << s2;
    }
 
// ----------------------------------------------------------------------------

    int cf1() {
        return 42;
    }
    
    int cf2(int i) {
        int l = i;
        l++;
        i++;
        return (i+1);
    }
    
    int cf3(int& i) {
        return (i+1);
    }
    
    int cf4(const sc_uint<4>& a, sc_uint<8>& b) {
        auto l = a+1;
        return (l+b);
    }
    
    sc_biguint<33> cf5(const sc_uint<4> a, sc_biguint<8>& b) {
        sc_biguint<33> res;
        res = a;
        if (b != 0) {
            res++;
        }
        return res;
    }
    
    bool cf6(const unsigned a) {
        unsigned sum = 0;
        for (unsigned i = 0; i < a; i++) {
            sum += i;
        }
        return sum > 9;
    }
    
    bool cf7(unsigned* a) {
        return *a > 0;
    }
    
    
    void const_eval1() 
    {
        int k;
        sc_uint<8> ku = 3;
        sc_biguint<8> kb = 2;
        sc_biguint<33> res;

        cf1();
        k = cf1();
        k = cf2(1);
        t1 = k;
        k = cf3(t1);
        k = cf4(2, ku);
        res = cf5(1, kb);
        bool b = cf6(5);
        *pu = 1;
        b = cf7(pu);
        
        if (cf1()) {
            k = 1;
        }
        if (cf2(0)) {
            k = 2;
        } else if (cf7(pu)) {
            k = 3;
        }
    }
    
    unsigned cff1() {
        int l = cf1();
        return cf2(l);
    }
    
    unsigned cff2() {
        int l = -1;
        if (cf3(l)) {
            l++;
        }
        return cf2(l);
    }
    
    unsigned cff3(unsigned a) {
        int l = cff1();
        return cf2(l+a);
    }
    
    unsigned cff4(unsigned a) {
        int l = cf1();
        if (s1.read())
           return cf2(l);
        else 
           return 0;
    }
    
    void const_eval2() 
    {
        int k;
        sc_uint<8> ku = 3;
        sc_biguint<8> kb = 2;
        sc_biguint<33> res;

        k = cff1();
        k = cff2();
        k = cff3(1);
        cff3(2);
        
        k = cff4(0);
    }
    
    
// ----------------------------------------------------------------------------
    
    void f1()  {
        int l = 42;
    }
    
    void f1a()  {
        s1 = 42;
    }
    
    int f2(int i)  {
        if (s2.read()) 
            return (i+1);
        else 
            return (i+2);
    }
    
    int f3(int i)  {
        t2 += i;
        return 42;
    }
    
    int f3a(int i)  {
        t3 += i;
        return 42;
    }
    
    int f4()  {
        return s2.read() ? 42 : 43;
    }
    
    int f5()  {
        return s2.read();
    }
    
    int f6(unsigned& a)  {
        a++;
        return a;
    }
    
    unsigned f7(unsigned* a)  {
        *a = 1;
        return *a;
    }
    
    unsigned f8()  {
        return s2.read();
    }

    void non_const_eval1() 
    {
        int m;
        unsigned mu = 1;
        f1();
        m = f2(1);
        m = f3(1);
        m = f4();
        m = f5();
        m = f6(mu);
        m = f7(qu);
        m = f8();
    }
    
    unsigned ff1() {
        f1a();
        return 1;
    } 
    
    sc_int<16> ff2() {
        f1();
        return (f2(1)-3);
    } 
    
    sc_int<16> ff3() {
        int a = 1;
        if (cf2(a)) {
            a = 0;
        }
        return f3a(a);
    } 
    
    bool ff4() {
        return ff2() > 3;
    } 
    
    
    int g(int& par) {
        par++;
        return 1;
    }
    int ff5(int a) {
        int b = g(a);
        int c = a;
        return s2.read();
    } 
    
    void non_const_eval2() 
    {
        int k;
        sc_uint<8> ku = 3;
        sc_biguint<8> kb = 2;
        sc_biguint<33> res;

        k = ff1();   
        k = ff2();
        k = ff3();
        k = ff4();
        k = ff5(1);
    }
};

int sc_main(int argc, char *argv[]) 
{
    A a_mod{"a`_mod"};
    sc_start();
    return 0;
}

