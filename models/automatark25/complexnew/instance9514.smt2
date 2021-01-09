(declare-const X String)
; /\x2f[a-z-_]{90,}\x2e(html|php)$/U
(assert (str.in.re X (re.++ (str.to.re "//.") (re.union (str.to.re "html") (str.to.re "php")) (str.to.re "/U\x0a") ((_ re.loop 90 90) (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_"))) (re.* (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_"))))))
; \b(0?[1-9]|1[0-2])(\/)(0?[1-9]|1[0-9]|2[0-9]|3[0-1])(\/)(200[0-8])\b
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/\x0a200") (re.range "0" "8"))))
; Yeah\!User-Agent\x3a
(assert (not (str.in.re X (str.to.re "Yeah!User-Agent:\x0a"))))
(check-sat)
