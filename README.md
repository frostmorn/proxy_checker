# proxy_checker
Multithreaded proxy checker

### Check proxies from file:

```
Usage:   -c --check_origin    origin != proxy_addr
 checker [-w workers] [-t 4,5,h]
  -h, -? --help        this message
  -w --workers         max workers
  -i --input           input proxy file
  -o --output          output proxy file
  -t --types           proxy types (4,5,h)
  -u --timeout         socket read/write timeout
  -p --print           print online proxies
```    

### Check proxies from range:

```
Usage:   -c --check_origin    origin != proxy_addr
 scanner [-w workers] [-t 4,5,h] [-r 16777216-4294967295] [ -s 4[4145,1488]5[1080]h[80,8080] ]
  -h --help, -?        this message
  -s --ports           port list for check[]
  -r --range           checking range(16777216-4294967295 equal 1.0.0.0-255.255.255.255)
  -w --workers         max workers
  -o --output          output proxy file
  -t --types           proxy types (4,5,h)
  -u --timeout         socket read/write timeout
  -p --print           print online proxies
```