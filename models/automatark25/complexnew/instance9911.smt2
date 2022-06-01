(declare-const X String)
; /ps0=[A-F0-9]*&ps1=[A-F0-9]*&cs1=[A-F0-9]*&cs2=[A-F0-9]*&cs3=[A-F0-9]*/P
(assert (str.in_re X (re.++ (str.to_re "/ps0=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&ps1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&cs1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&cs2=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&cs3=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "/P\u{a}"))))
; act=\s+User-Agent\u{3A}EvilFTPHost\u{3A}
(assert (str.in_re X (re.++ (str.to_re "act=") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:EvilFTPHost:\u{a}"))))
(check-sat)
