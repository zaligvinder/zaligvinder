(declare-const X String)
; (1[8,9]|20)[0-9]{2}
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "8") (str.to.re ",") (str.to.re "9"))) (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ewmf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wmf/i\x0a")))))
; Fictionaliufilfwulmfi\x2friuf\.lio
(assert (not (str.in.re X (str.to.re "Fictionaliufilfwulmfi/riuf.lio\x0a"))))
; <!--[\d\D]*?-->
(assert (not (str.in.re X (re.++ (str.to.re "<!--") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to.re "-->\x0a")))))
; ^[a-zA-Z0-9_\s-]+$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
(check-sat)
