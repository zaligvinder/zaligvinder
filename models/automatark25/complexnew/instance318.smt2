(declare-const X String)
; /ps0=[A-F0-9]*&ps1=[A-F0-9]*&cs1=[A-F0-9]*&cs2=[A-F0-9]*&cs3=[A-F0-9]*/P
(assert (not (str.in_re X (re.++ (str.to_re "/ps0=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&ps1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&cs1=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&cs2=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "&cs3=") (re.* (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "/P\u{a}")))))
; searches\u{2E}worldtostart\u{2E}com\w+searchreslt\u{7D}\u{7B}Sysuptime\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "searches.worldtostart.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "searchreslt}{Sysuptime:\u{a}")))))
(check-sat)
