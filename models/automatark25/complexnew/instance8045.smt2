(declare-const X String)
; ^[\w\s]+$
(assert (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{a}"))))
; ^[ a - z, 0 - 9 , ?   -   ?   ,?   -   ? , ?    -  ?   ,?   -  ? , . ]
(assert (not (str.in_re X (re.++ (re.union (str.to_re " ") (str.to_re "a") (re.range " " " ") (str.to_re "z") (str.to_re ",") (str.to_re "0") (str.to_re "9") (str.to_re "?") (str.to_re ".")) (str.to_re "\u{a}")))))
; httphost\dActivityfilename=\u{22}
(assert (not (str.in_re X (re.++ (str.to_re "httphost") (re.range "0" "9") (str.to_re "Activityfilename=\u{22}\u{a}")))))
(check-sat)
