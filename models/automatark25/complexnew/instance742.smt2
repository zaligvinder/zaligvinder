(declare-const X String)
; Subject\x3a\s+Yeah\!Online\x2521\x2521\x2521
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Yeah!Online%21%21%21\x0a"))))
; /hwid=[^\x0a\x26]+?\x26pc=[^\x0a\x26]+?\x26localip=[^\x0a\x26]+?\x26winver=/U
(assert (str.in.re X (re.++ (str.to.re "/hwid=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&pc=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&localip=") (re.+ (re.union (str.to.re "\x0a") (str.to.re "&"))) (str.to.re "&winver=/U\x0a"))))
; /^\d{2}[\-\/]\d{2}[\-\/]\d{4}$/
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re "/")) ((_ re.loop 2 2) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re "/")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/\x0a"))))
(check-sat)
