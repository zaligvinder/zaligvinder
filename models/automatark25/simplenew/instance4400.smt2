(declare-const X String)
; Host\x3AUser-Agent\x3Awww\.raxsearch\.com
(assert (str.in.re X (str.to.re "Host:User-Agent:www.raxsearch.com\x0a")))
(check-sat)
