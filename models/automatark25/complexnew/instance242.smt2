(declare-const X String)
; /filename=[^\n]*\x2eemf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".emf/i\x0a"))))
; /\/\?[a-z0-9]{9}\=[a-zA-Z0-9]{45}/U
(assert (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "=") ((_ re.loop 45 45) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "/U\x0a"))))
; ^\d{9}[\d|X]$
(assert (not (str.in.re X (re.++ ((_ re.loop 9 9) (re.range "0" "9")) (re.union (re.range "0" "9") (str.to.re "|") (str.to.re "X")) (str.to.re "\x0a")))))
; /\/jovf\.html$/U
(assert (not (str.in.re X (str.to.re "//jovf.html/U\x0a"))))
; /nsrmm[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (str.in.re X (re.++ (str.to.re "/nsrmm") (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "$(") (str.to.re ";") (str.to.re "|") (str.to.re "&") (str.to.re "`")) (str.to.re "/\x0a"))))
(check-sat)
