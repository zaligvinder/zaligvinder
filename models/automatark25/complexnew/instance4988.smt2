(declare-const X String)
; (^(((\d)|(\d\d)|(\d\d\d))(\xA0|\x20))*((\d)|(\d\d)|(\d\d\d))([,.]\d*)?$)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.++ (re.union (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))) (re.union (str.to.re "\xa0") (str.to.re " ")))) (re.union (re.range "0" "9") (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "0" "9") (re.range "0" "9") (re.range "0" "9"))) (re.opt (re.++ (re.union (str.to.re ",") (str.to.re ".")) (re.* (re.range "0" "9"))))))))
; ^([A-Z]|[a-z]|[0-9])(([A-Z])*(([a-z])*([0-9])*(%)*(&)*(')*(\+)*(-)*(@)*(_)*(\.)*)|(\ )[^  ])+$
(assert (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.+ (re.union (re.++ (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "0" "9")) (re.* (str.to.re "%")) (re.* (str.to.re "&")) (re.* (str.to.re "'")) (re.* (str.to.re "+")) (re.* (str.to.re "-")) (re.* (str.to.re "@")) (re.* (str.to.re "_")) (re.* (str.to.re "."))) (re.++ (str.to.re " ") (re.comp (str.to.re " "))))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2enab/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".nab/i\x0a")))))
(check-sat)
