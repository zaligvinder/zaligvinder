(declare-const X String)
; /hwid=[^\x0a\x26]+?\x26pc=[^\x0a\x26]+?\x26localip=[^\x0a\x26]+?\x26winver=/U
(assert (not (str.in.re X (re.++ (str.to.re "/hwid=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&pc=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&localip=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&winver=/U\x0a")))))
(check-sat)
