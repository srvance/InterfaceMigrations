package com.vance.migration.simple.removeparam;

import org.junit.Test;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.assertThat;

public class TestRemoveParamBefore {
    @Test
    public void testSubtract3() {
        assertThat(RemoveParam.subtract(17, 6, 2), is(9));
    }
}
