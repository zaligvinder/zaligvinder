(declare-const X String)
; ^[A-Z][a-z]+((i)?e(a)?(u)?[r(re)?|x]?)$
(assert (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.opt (str.to.re "i")) (str.to.re "e") (re.opt (str.to.re "a")) (re.opt (str.to.re "u")) (re.opt (re.union (str.to.re "r") (str.to.re "(") (str.to.re "e") (str.to.re ")") (str.to.re "?") (str.to.re "|") (str.to.re "x"))))))
; (^[0-9]*[1-9]+[0-9]*\.[0-9]*$)|(^[0-9]*\.[0-9]*[1-9]+[0-9]*$)|(^[0-9]*[1-9]+[0-9]*$)
(assert (not (str.in.re X (re.union (re.++ (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))))))
; www\x2Ericercadoppia\x2Ecom\w+TPSystem\s+User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.ricercadoppia.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "TPSystem") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a")))))
(check-sat)
