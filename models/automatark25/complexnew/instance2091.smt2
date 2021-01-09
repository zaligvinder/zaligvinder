(declare-const X String)
; ^([9]{1})+(6|3|2|1{1})+([0-9]{7})$
(assert (not (str.in.re X (re.++ (re.+ ((_ re.loop 1 1) (str.to.re "9"))) (re.+ (re.union (str.to.re "6") (str.to.re "3") (str.to.re "2") ((_ re.loop 1 1) (str.to.re "1")))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2em4r/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m4r/i\x0a")))))
; /\/click\?sid=\w{40}\&cid=/Ui
(assert (str.in.re X (re.++ (str.to.re "//click?sid=") ((_ re.loop 40 40) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "&cid=/Ui\x0a"))))
(check-sat)
