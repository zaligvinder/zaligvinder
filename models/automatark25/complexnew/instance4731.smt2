(declare-const X String)
; ^([L|U]{1})([0-9]{5})([A-Za-z]{2})([0-9]{4})([A-Za-z]{3})([0-9]{6})$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re "L") (str.to.re "|") (str.to.re "U"))) ((_ re.loop 5 5) (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 3 3) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 6 6) (re.range "0" "9")) (str.to.re "\x0a"))))
; HTTPwwwProbnymomspyo\x2fzowy
(assert (not (str.in.re X (str.to.re "HTTPwwwProbnymomspyo/zowy\x0a"))))
; as\x2Estarware\x2Ecom%3fUser-Agent\x3Ahostie
(assert (not (str.in.re X (str.to.re "as.starware.com%3fUser-Agent:hostie\x0a"))))
; ^([\+][0-9]{1,3}[\.][0-9]{1,12})([x]?[0-9]{1,4}?)$
(assert (str.in.re X (re.++ (str.to.re "\x0a+") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 12) (re.range "0" "9")) (re.opt (str.to.re "x")) ((_ re.loop 1 4) (re.range "0" "9")))))
; (\{\\f\d*)\\([^;]+;)
(assert (not (str.in.re X (re.++ (str.to.re "\x5c\x0a{\x5cf") (re.* (re.range "0" "9")) (re.+ (re.comp (str.to.re ";"))) (str.to.re ";")))))
(check-sat)
