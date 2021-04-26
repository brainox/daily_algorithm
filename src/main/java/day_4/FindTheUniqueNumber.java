package day_4;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/*
There is an array with some numbers. All numbers are equal except for one. Try to find it!

Kata.findUniq(new double[]{ 1, 1, 1, 2, 1, 1 }); // => 2
Kata.findUniq(new double[]{ 0, 0, 0.55, 0, 0 }); // => 0.55
It’s guaranteed that array contains at least 3 numbers.

The tests contain some very huge arrays, so think about performance.

This is the first kata in series:

Find the unique number (this kata)
Find the unique string
Find The Unique
 */
public class FindTheUniqueNumber {
    public static void main(String[] args) {
        var myArr = new double[]{1, 1, 1, 2, 1, 1};
        System.out.println(findUniq(myArr));

    }
    public static double findUniq(double arr[]) {
        var len = arr.length;
        Arrays.sort(arr);
        return arr[0] == arr[1] ? arr[len - 1] : arr[0];
    }
}
