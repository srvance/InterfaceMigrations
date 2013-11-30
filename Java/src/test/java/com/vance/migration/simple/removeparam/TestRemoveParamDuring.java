package com.vance.migration.simple.removeparam;

import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

public class TestRemoveParamDuring {
    @Test
    public void testSubtract3() {
        assertThat(RemoveParam.subtract(17, 6, 2), is(9));
    }

//    @Test
//    public void testSubtract2() {
//        assertThat(RemoveParam.subtract(17, 8), is(9));
//    }
}
