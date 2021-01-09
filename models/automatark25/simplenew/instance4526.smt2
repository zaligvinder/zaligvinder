(declare-const X String)
; /\x2f[a-z-_]{90,}\x2e(html|php)$/U
(assert (not (str.in.re X (re.++ (str.to.re "//.") (re.union (str.to.re "html") (str.to.re "php")) (str.to.re "/U\x0a") ((_ re.loop 90 90) (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_"))) (re.* (re.union (re.range "a" "z") (str.to.re "-") (str.to.re "_")))))))
(check-sat)
