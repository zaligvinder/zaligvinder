(declare-const X String)
; clvompycem\u{2f}cen\.vcnHost\u{3A}User-Agent\u{3A}\u{d}\u{a}
(assert (str.in_re X (str.to_re "clvompycem/cen.vcnHost:User-Agent:\u{d}\u{a}\u{a}")))
; /filename\s*=\s*[^\r\n]*?\u{2e}pcx[\u{22}\u{27}\u{3b}\s\r\n]/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re ".pcx") (re.union (str.to_re "\u{22}") (str.to_re "'") (str.to_re ";") (str.to_re "\u{d}") (str.to_re "\u{a}") (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/i\u{a}")))))
; ^[a-zA-Z][a-zA-Z0-9_]+$
(assert (str.in_re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_"))) (str.to_re "\u{a}"))))
; [AaEeIiOoUuYy]
(assert (str.in_re X (re.++ (re.union (str.to_re "A") (str.to_re "a") (str.to_re "E") (str.to_re "e") (str.to_re "I") (str.to_re "i") (str.to_re "O") (str.to_re "o") (str.to_re "U") (str.to_re "u") (str.to_re "Y") (str.to_re "y")) (str.to_re "\u{a}"))))
(check-sat)
