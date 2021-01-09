(declare-const X String)
; Host\x3A\sToolbarServerserver\x7D\x7BSysuptime\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "ToolbarServerserver}{Sysuptime:\x0a"))))
; ^([1][0-9]|[0-9])[1-9]{2}$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "9")) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "\x0a")))))
(check-sat)
