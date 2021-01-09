(declare-const X String)
; protocol\s+3A\s+data2\.activshopper\.comUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "protocol") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "3A") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data2.activshopper.comUser-Agent:\x0a")))))
(check-sat)
