(declare-const X String)
; search\x2eimesh\x2ecom\s+WatchDogupwww\.klikvipsearch\.com
(assert (str.in.re X (re.++ (str.to.re "search.imesh.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "WatchDogupwww.klikvipsearch.com\x0a"))))
(check-sat)
