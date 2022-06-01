(declare-const X String)
; /ps0=[A-F0-9]*&ps1=[A-F0-9]*&cs1=[A-F0-9]*&cs2=[A-F0-9]*&cs3=[A-F0-9]*/P
(assert (str.in_re X (re.++ (str.to_re "/ps0=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&ps1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&cs1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&cs2=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&cs3=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "/P\u{a}"))))
(check-sat)
