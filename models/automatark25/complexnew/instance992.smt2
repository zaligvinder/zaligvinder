(declare-const X String)
; /filename=[^\n]*\x2efdf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fdf/i\x0a"))))
; /filename=[^\n]*\x2ecis/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cis/i\x0a")))))
; /filename=p50[a-z0-9]{9}[0-9]{12}\.pdf/H
(assert (str.in.re X (re.++ (str.to.re "/filename=p50") ((_ re.loop 9 9) (re.union (re.range "a" "z") (re.range "0" "9"))) ((_ re.loop 12 12) (re.range "0" "9")) (str.to.re ".pdf/H\x0a"))))
; /setInterval\s*\x28[^\x29]+\x2efocus\x28\x29/smi
(assert (not (str.in.re X (re.++ (str.to.re "/setInterval") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.+ (re.comp (str.to.re ")"))) (str.to.re ".focus()/smi\x0a")))))
(check-sat)
