(declare-const X String)
; ^[^\\\./:\*\?\"<>\|]{1}[^\\/:\*\?\"<>\|]{0,254}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "\x5c") (str.to.re ".") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) ((_ re.loop 0 254) (re.union (str.to.re "\x5c") (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re "\x0a")))))
; pgwtjgxwthx\x2fbyb\.xkyLOGurl=enews\x2Eearthlink\x2Enet
(assert (not (str.in.re X (str.to.re "pgwtjgxwthx/byb.xkyLOGurl=enews.earthlink.net\x0a"))))
; InformationHost\x3Abadurl\x2Egrandstreetinteractive\x2Ecom
(assert (str.in.re X (str.to.re "InformationHost:badurl.grandstreetinteractive.com\x0a")))
(check-sat)
