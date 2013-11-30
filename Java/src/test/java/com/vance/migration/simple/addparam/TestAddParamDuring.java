package com.vance.migration.simple.addparam;

import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

public class TestAddParamDuring {
    @Test
    public void testAdd2() {
        assertThat(AddParam.add(2, 3), is(5));
    }

//    @Test
//    public void testAdd3() {
//        assertThat(AddParam.add(2, 3, 4), is(9));
//    }
}
