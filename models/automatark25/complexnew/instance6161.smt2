(declare-const X String)
; www\x2Esogou\x2EcomUser-Agent\x3A
(assert (str.in.re X (str.to.re "www.sogou.comUser-Agent:\x0a")))
; ^([1-9]|0[1-9]|1[0-2]):([0-5][0-9])$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9"))))
; /filename=[^\n]*\x2edoc/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".doc/i\x0a"))))
; Host\x3AX-Mailer\x3atoolbar\.wishbone\.com
(assert (not (str.in.re X (str.to.re "Host:X-Mailer:\x13toolbar.wishbone.com\x0a"))))
; &( )
(assert (not (str.in.re X (str.to.re "& \x0a"))))
(check-sat)
