# Rapiflash Ruby Gem'

This gem is a wrapper of the Rapiflash API and allows developers to gather data from Rapiflash devices around the world such as flood data and river water level.

### Usage

```
require 'rapiflash'

# call for single device's data

Flood.find(id) # replace id with any device id you would like to analyze

# returns
# #<Flood:0x0000000152c398 @id=1, @normal_level=4.5, @current_level=5.0, @flooded=false, @upstream=nil, @location="Australia", @created_at="2015-05-21T23:55:39.455Z", @updated_at="2015-05-21T23:55:39.455Z">

# call for 1000 of the latest device data

Flood.all

# returns
# [#<Flood:0x000000026b34e0 @id=6, @normal_level=6.0, @current_level=8.0, @flooded=true, @upstream=nil, @location="Georgia", @created_at="2015-05-22T02:11:49.396Z", @updated_at="2015-05-22T02:11:49.396Z">, #<Flood:0x000000026b3378 @id=5, @normal_level=6.0, @current_level=8.0, @flooded=true, @upstream=nil, @location="Georgia", @created_at="2015-05-22T01:53:46.659Z", @updated_at="2015-05-22T01:53:46.659Z">, #<Flood:0x000000026b31e8 @id=4, @normal_level=3.5, @current_level=5.0, @flooded=true, @upstream=nil, @location="Georgia", @created_at="2015-05-22T01:18:15.395Z", @updated_at="2015-05-22T01:18:15.395Z">, #<Flood:0x000000026b3080 @id=3, @normal_level=3.5, @current_level=5.0, @flooded=true, @upstream=nil, @location="Georgia", @created_at="2015-05-22T00:32:26.934Z", @updated_at="2015-05-22T00:32:26.934Z">, #<Flood:0x000000026b2ea0 @id=2, @normal_level=3.0, @current_level=5.0, @flooded=false, @upstream=nil, @location="Australia", @created_at="2015-05-22T00:09:26.892Z", @updated_at="2015-05-22T00:09:26.892Z">, #<Flood:0x000000026b2d10 @id=1, @normal_level=4.5, @current_level=5.0, @flooded=false, @upstream=nil, @location="Australia", @created_at="2015-05-21T23:55:39.455Z", @updated_at="2015-05-21T23:55:39.455Z">]
```

### Contributors

James Wang, Jaiveer Singh, Guarav Phanse, Devin Mui

### License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
