(declare-const X String)
; ^5[1-5][0-9]{14}$
(assert (not (str.in.re X (re.++ (str.to.re "5") (re.range "1" "5") ((_ re.loop 14 14) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2esum/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sum/i\x0a"))))
; /filename=[^\n]*\x2edvr-ms/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dvr-ms/i\x0a")))))
; /^\/[\w-]{48}\.[a-z]{2,8}[0-9]?$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 48 48) (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") ((_ re.loop 2 8) (re.range "a" "z")) (re.opt (re.range "0" "9")) (str.to.re "/U\x0a")))))
(check-sat)
