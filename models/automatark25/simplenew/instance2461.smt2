(declare-const X String)
; search\x2econduit\x2ecom\d+sidebar\.activeshopper\.comUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "search.conduit.com") (re.+ (re.range "0" "9")) (str.to.re "sidebar.activeshopper.comUser-Agent:\x0a"))))
(check-sat)
