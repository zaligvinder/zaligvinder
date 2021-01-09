(declare-const X String)
; /null[^\x7d]{0,50}\.body\.innerHTML\s*?\x3d\s*?[\x22\x27]{2}[^\x7d]{0,50}CollectGarbage\x28\s*?\x29[^\x7d]{0,250}document\.write\x28\s*?[\x22\x27]{2}/smi
(assert (str.in.re X (re.++ (str.to.re "/null") ((_ re.loop 0 50) (re.comp (str.to.re "}"))) (str.to.re ".body.innerHTML") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "\x22") (str.to.re "'"))) ((_ re.loop 0 50) (re.comp (str.to.re "}"))) (str.to.re "CollectGarbage(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ")") ((_ re.loop 0 250) (re.comp (str.to.re "}"))) (str.to.re "document.write(") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/smi\x0a"))))
; /User-Agent\x3a[^\x0d\x0a]*Java\/1\./H
(assert (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Java/1./H\x0a"))))
; /\&h=\d{5}$/iU
(assert (not (str.in.re X (re.++ (str.to.re "/&h=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/iU\x0a")))))
; /^router=.*?arg=[a-z\d\.]*[^a-z\d\.&]/iP
(assert (str.in.re X (re.++ (str.to.re "/router=") (re.* re.allchar) (str.to.re "arg=") (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "."))) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re ".") (str.to.re "&")) (str.to.re "/iP\x0a"))))
; ^\d{5}-\d{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
