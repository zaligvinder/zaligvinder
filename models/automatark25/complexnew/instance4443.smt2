(declare-const X String)
; ^\d?\d'(\d|1[01])"$
(assert (not (str.in.re X (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9") (str.to.re "'") (re.union (re.range "0" "9") (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re "\x22\x0a")))))
; /\.php\?id=(\d{5}-\d{3}-\d{7}-\d{5}|0[0-9a-f]{8}-([0-9a-f]{4}-){3}[0-9a-f]{12}1)&ver=\d{7}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/.php?id=") (re.union (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 5 5) (re.range "0" "9"))) (re.++ (str.to.re "0") ((_ re.loop 8 8) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "-") ((_ re.loop 3 3) (re.++ ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "-"))) ((_ re.loop 12 12) (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "1"))) (str.to.re "&ver=") ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; AnalSpy\-LockedacezSubject\x3A
(assert (not (str.in.re X (str.to.re "AnalSpy-LockedacezSubject:\x0a"))))
(check-sat)
