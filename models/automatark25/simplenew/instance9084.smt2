(declare-const X String)
; /ps0=[A-F0-9]*&ps1=[A-F0-9]*&cs1=[A-F0-9]*&cs2=[A-F0-9]*&cs3=[A-F0-9]*/P
(assert (str.in.re X (re.++ (str.to.re "/ps0=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&ps1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&cs1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&cs2=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "&cs3=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "/P\x0a"))))
(check-sat)
