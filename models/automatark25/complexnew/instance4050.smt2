(declare-const X String)
; ^([0-9A-F]{2}[:-]){5}([0-9A-F]{2})$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))) (re.union (str.to.re ":") (str.to.re "-")))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "\x0a"))))
; SAcc\d+Seconds\-\x2Fcommunicatortb
(assert (not (str.in.re X (re.++ (str.to.re "SAcc") (re.+ (re.range "0" "9")) (str.to.re "Seconds-/communicatortb\x0a")))))
; client\x2Ebaigoo\x2EcomUser\x3A
(assert (not (str.in.re X (str.to.re "client.baigoo.comUser:\x0a"))))
(check-sat)
