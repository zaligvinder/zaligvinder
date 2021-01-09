(declare-const X String)
; /^[0-9]+\.d{3}? *$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.range "0" "9")) (str.to.re ".") ((_ re.loop 3 3) (str.to.re "d")) (re.* (str.to.re " ")) (str.to.re "/\x0a"))))
; seqepagqfphv\x2fsfdX-Mailer\x3A
(assert (not (str.in.re X (str.to.re "seqepagqfphv/sfdX-Mailer:\x13\x0a"))))
; [0-9.\-/+() ]{4,}
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 4 4) (re.union (re.range "0" "9") (str.to.re ".") (str.to.re "-") (str.to.re "/") (str.to.re "+") (str.to.re "(") (str.to.re ")") (str.to.re " "))) (re.* (re.union (re.range "0" "9") (str.to.re ".") (str.to.re "-") (str.to.re "/") (str.to.re "+") (str.to.re "(") (str.to.re ")") (str.to.re " ")))))))
; /filename=[^\n]*\x2ejpf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpf/i\x0a")))))
; /setup=[a-z]\&s=\d\&r=\d{5}$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/setup=") (re.range "a" "z") (str.to.re "&s=") (re.range "0" "9") (str.to.re "&r=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
(check-sat)
