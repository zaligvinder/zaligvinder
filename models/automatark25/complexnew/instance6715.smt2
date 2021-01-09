(declare-const X String)
; ^([a-zA-Z0-9]+([\.+_-][a-zA-Z0-9]+)*)@(([a-zA-Z0-9]+((\.|[-]{1,2})[a-zA-Z0-9]+)*)\.[a-zA-Z]{2,6})$
(assert (str.in.re X (re.++ (str.to.re "@\x0a") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.union (str.to.re ".") (str.to.re "+") (str.to.re "_") (str.to.re "-")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re ".") ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.union (str.to.re ".") ((_ re.loop 1 2) (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))))))
; www\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "www.searchreslt.com\x0a"))))
; \\s\\d{2}[-]\\w{3}-\\d{4}
(assert (str.in.re X (re.++ (str.to.re "\x5cs\x5c") ((_ re.loop 2 2) (str.to.re "d")) (str.to.re "-\x5c") ((_ re.loop 3 3) (str.to.re "w")) (str.to.re "-\x5c") ((_ re.loop 4 4) (str.to.re "d")) (str.to.re "\x0a"))))
; ^-?\d*(\.\d+)?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
