(declare-const X String)
; ^~/[0-9a-zA-Z_][0-9a-zA-Z/_-]*\.[0-9a-zA-Z_-]+$
(assert (not (str.in.re X (re.++ (str.to.re "~/") (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_")) (re.* (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "/") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re "-"))) (str.to.re "\x0a")))))
; Agentppcdomain\x2Eco\x2EukWordSpy\-Locked
(assert (not (str.in.re X (str.to.re "Agentppcdomain.co.ukWordSpy-Locked\x0a"))))
(check-sat)
