(declare-const X String)
; for\x2Fproducts\x2Fspyblocs\x2FHost\x3Aocllceclbhs\x2fgth
(assert (str.in.re X (str.to.re "for/products/spyblocs/\x13Host:ocllceclbhs/gth\x0a")))
; hirmvtg\x2fggqh\.kqhSurveillanceHost\x3A
(assert (not (str.in.re X (str.to.re "hirmvtg/ggqh.kqh\x1bSurveillance\x13Host:\x0a"))))
; ^([a-zA-Z].*|[1-9].*)\.(((j|J)(p|P)(g|G))|((g|G)(i|I)(f|F)))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* re.allchar)) (re.++ (re.range "1" "9") (re.* re.allchar))) (str.to.re ".") (re.union (re.++ (re.union (str.to.re "j") (str.to.re "J")) (re.union (str.to.re "p") (str.to.re "P")) (re.union (str.to.re "g") (str.to.re "G"))) (re.++ (re.union (str.to.re "g") (str.to.re "G")) (re.union (str.to.re "i") (str.to.re "I")) (re.union (str.to.re "f") (str.to.re "F")))) (str.to.re "\x0a")))))
; /\x2ephp\x3f[a-z]+=[a-fA-Z0-9]+&[a-z]+=[0-9]+$/iU
(assert (not (str.in.re X (re.++ (str.to.re "/.php?") (re.+ (re.range "a" "z")) (str.to.re "=") (re.+ (re.union (re.range "a" "f") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "&") (re.+ (re.range "a" "z")) (str.to.re "=") (re.+ (re.range "0" "9")) (str.to.re "/iU\x0a")))))
; PortweatherX-Mailer\x3aUser-Agent\x3AToolbar
(assert (not (str.in.re X (str.to.re "PortweatherX-Mailer:\x13User-Agent:Toolbar\x0a"))))
(check-sat)
