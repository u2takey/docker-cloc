# Usage

```
docker run u2takey/cloc:1.70 --repo=repopath (cloc options)
```

## Public Repo
```
➜  ✗ docker run u2takey/cloc:1.70  --repo=https://github.com/arlert/malcolm --exclude-dir=vendor

clone repo : https://github.com/arlert/malcolm .....
Cloning into 'malcolm'...
clone repo success
--exclude-dir=vendor
      49 text files.
      49 unique files.
       7 files ignored.

github.com/AlDanial/cloc v 1.70  T=0.14 s (307.0 files/s, 23847.9 lines/s)
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
Go                              34            341            242           2574
YAML                             7              2              0            124
Python                           1             10              1             55
Markdown                         1              6              0             26
make                             1             12              0             25
-------------------------------------------------------------------------------
SUM:                            44            371            243           2804
-------------------------------------------------------------------------------
```

## Private Repo

```
➜  ✗ docker run  -v /Users/user/.ssh/id_rsa:/root/.ssh/id_rsa u2takey/cloc:1.70  --repo=git@github.com:private/repo.git --exclude-dir=vendor

clone repo : git@github.com:private/repo.git .....
Cloning into 'repo'...
Warning: Permanently added 'github.com,192.30.253.112' (RSA) to the list of known hosts.
Checking out files: 100% (13180/13180), done.
clone repo success
--exclude-dir=vendor
     807 text files.
     785 unique files.
     228 files ignored.

github.com/AlDanial/cloc v 1.70  T=3.15 s (186.3 files/s, 18639.7 lines/s)
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
JSON                            30              5              0          19586
Go                             164           2702            877          14670
Ruby                           110           1554            845           6589
TypeScript                      67            307             44           3155
YAML                           111            213            324           3147
LESS                            33            105             17            928
Markdown                        17            199              0            533
Python                           3            122            487            436
Bourne Shell                    18            130            170            427
JavaScript                       8             33             50            328
make                             5             71             67            168
ERB                              4             14             16            138
Qt Linguist                     14             16              0            103
SQL                              2             33              4            100
HTML                             1              5              8             11
-------------------------------------------------------------------------------
SUM:                           587           5509           2909          50319
-------------------------------------------------------------------------------
```