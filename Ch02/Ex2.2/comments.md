Ch02 - Ex 2.2
============

**Question**: *Which of the following are valid numerals? What are their
values?*

    .0e12 .e12   0.0e  0x12    0xABFG 0xA FFFF 0xFFFFFFFF
    0x    0x1P10 0.1e1 0x0.1p1


* `.0e12` translates as `(0.0) * (10^12) = 0`
* `.e12` has no decimal part, thus is invalid.
* `0.0e` is missing the exponentiation factor after the trailing `-e`, thus is invalid.
* `0x12` is prefixed with `0x` (hexadecimal representation), thus translates as `12` (decimal representation)
* `0xABFG` is invalid, as `G` is unknown in hexadecimal representation
* `0xA` is prefixed with `0x` (hexadecimal representation), thus translates as `10` (decimal representation)
* `FFFF` is not valid, as `F` is unknown in decimal representation
* `0xFFFFFFFF` is prefixed with `0x` (hexadecimal representation), thus translates as `4294967295` (decimal representation)
* `0x` is invalid, the hexadecimal representation of the number is missing
* `0x1P10` is prefixed with `0x` (hexadecimal representation), thus translates as `1024` (decimal representation). The `P10` part is the binary exponent. The number translates as `(1)*(2^10) = 1024`.
* `0.1e1` translates as `(0.1) * (10^1) = 10`
* `0x0.1p1` is prefixed with `0x` (hexadecimal representation), but this one is tricky. `0.1` is the fractional part and translates as `(0.0) + (0.1) * 16 = 0.0625` (in decimal representation). `p1` is the binary exponent, so the whole number becomes `0.625 * (2^1) = 0.125`. 

See [numerals.lua](numerals.lua)