[![Gem Version](https://badge.fury.io/rb/ratio.png)](http://badge.fury.io/rb/ratio) [![Code Climate](https://codeclimate.com/github/mtgrosser/ratio.png)](https://codeclimate.com/github/mtgrosser/ratio)
# ratio

Rationals without the reduction

```ruby
Rational(50, 100)
=> 12

Ratio(50, 100)
=> 50:100

Rational(50, 100).numerator
=> 1

Rational(50, 100).denominator
=> 2

Ratio(50, 100).numerator
=> 50

Ratio(50, 100).denominator
=> 100
```
