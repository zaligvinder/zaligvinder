(declare-const X String)
; www\x2Ericercadoppia\x2Ecom[^\n\r]*xml\s+User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "www.ricercadoppia.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "xml") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; [\t ]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re "\x09") (str.to.re " "))) (str.to.re "\x0a")))))
; (0?[1-9]|[12][0-9]|3[01])[/ -](0?[1-9]|1[12])[/ -](19[0-9]{2}|[2][0-9][0-9]{2})
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (re.union (str.to.re "/") (str.to.re " ") (str.to.re "-")) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "1") (str.to.re "2")))) (re.union (str.to.re "/") (str.to.re " ") (str.to.re "-")) (re.union (re.++ (str.to.re "19") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "9") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^[1-9]{1}$|^[1-4]{1}[0-9]{1}$|^50$
(assert (not (str.in.re X (re.union ((_ re.loop 1 1) (re.range "1" "9")) (re.++ ((_ re.loop 1 1) (re.range "1" "4")) ((_ re.loop 1 1) (re.range "0" "9"))) (str.to.re "50\x0a")))))
(check-sat)
