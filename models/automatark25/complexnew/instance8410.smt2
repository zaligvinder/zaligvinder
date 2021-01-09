(declare-const X String)
; /\.background\s*=\s*[\x22\x27]{2}/i
(assert (str.in.re X (re.++ (str.to.re "/.background") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/i\x0a"))))
; @([_a-zA-Z]+)
(assert (not (str.in.re X (re.++ (str.to.re "@") (re.+ (re.union (str.to.re "_") (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; Host\x3Ahjhgquqssq\x2fpjmonHost\x3AHost\x3AA-311byName=Your\+Host\+is\x3A
(assert (str.in.re X (str.to.re "Host:hjhgquqssq/pjmonHost:Host:A-311byName=Your+Host+is:\x0a")))
; Host\x3A\d+Litequick\x2Eqsrch\x2EcomaboutHost\x3AComputer\x7D\x7BSysuptime\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Litequick.qsrch.comaboutHost:Computer}{Sysuptime:\x0a"))))
(check-sat)
