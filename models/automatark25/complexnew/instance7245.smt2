(declare-const X String)
; (^[a-zA-Z][a-zA-Z0-9_]*)|(^[_][a-zA-Z0-9_]+)
(assert (str.in.re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_")))) (re.++ (str.to.re "\x0a_") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_")))))))
; MSNLOGOVNUsertooffers\x2Ebullseye-network\x2Ecom
(assert (str.in.re X (str.to.re "MSNLOGOVNUsertooffers.bullseye-network.com\x0a")))
; User-Agent\x3A\s+GET\d+\x2Fcommunicatortb
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "GET") (re.+ (re.range "0" "9")) (str.to.re "/communicatortb\x0a")))))
(check-sat)
