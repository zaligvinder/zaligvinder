(declare-const X String)
; ^[1-9][0-9]{0,2}$
(assert (str.in.re X (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; \w{5,255}
(assert (not (str.in.re X (re.++ ((_ re.loop 5 255) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2emim/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mim/i\x0a")))))
; (^0[78][2347][0-9]{7})
(assert (str.in.re X (re.++ (str.to.re "\x0a0") (re.union (str.to.re "7") (str.to.re "8")) (re.union (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "7")) ((_ re.loop 7 7) (re.range "0" "9")))))
; /[a-z]{2}_[a-z0-9]{8}\.mod/Ui
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 2 2) (re.range "a" "z")) (str.to.re "_") ((_ re.loop 8 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".mod/Ui\x0a"))))
(check-sat)
