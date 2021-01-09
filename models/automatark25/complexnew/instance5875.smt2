(declare-const X String)
; ^[a-zA-Z]([a-zA-Z0-9])*([\.][a-zA-Z]([a-zA-Z0-9])*)*$
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (str.to.re ".") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re "\x0a")))))
; (^\b\d+-\d+$\b)|(^\b\d+$\b)
(assert (not (str.in.re X (re.union (re.++ (re.+ (re.range "0" "9")) (str.to.re "-") (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))))
; eveocczmthmmq\x2fomzl\d+Host\x3Aulmxct\x2fmqoyc
(assert (not (str.in.re X (re.++ (str.to.re "eveocczmthmmq/omzl") (re.+ (re.range "0" "9")) (str.to.re "Host:ulmxct/mqoyc\x0a")))))
(check-sat)
