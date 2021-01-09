(declare-const X String)
; /([^\x00-\xFF]\s*)/u
(assert (not (str.in.re X (re.++ (str.to.re "//u\x0a") (re.range "\x00" "\xff") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
; /^\/999$/U
(assert (str.in.re X (str.to.re "//999/U\x0a")))
; (^0[78][2347][0-9]{7})
(assert (str.in.re X (re.++ (str.to.re "\x0a0") (re.union (str.to.re "7") (str.to.re "8")) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "7")) ((_ re.loop 7 7) (re.range "0" "9")))))
; (@\s*".*?")|("([^"\\]|\\.)*?")
(assert (str.in.re X (re.union (re.++ (str.to.re "@") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x22") (re.* re.allchar) (str.to.re "\x22")) (re.++ (str.to.re "\x0a\x22") (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x22") (str.to.re "\x5c"))) (str.to.re "\x22")))))
; ^\(?[\d]{3}\)?[\s-]?[\d]{3}[\s-]?[\d]{4}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
