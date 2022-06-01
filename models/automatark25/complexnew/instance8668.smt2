(declare-const X String)
; /^connected\u{2e}[^\u{D}\u{A}]*20\d\d[^\u{D}\u{A}]*ver\u{3A}\s+Legends\s2\u{2e}1/smi
(assert (not (str.in_re X (re.++ (str.to_re "/connected.") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "20") (re.range "0" "9") (re.range "0" "9") (re.* (re.union (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "ver:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Legends") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "2.1/smi\u{a}")))))
; tv\u{2E}180solutions\u{2E}com\s+have\s+Dayspassword\u{3B}0\u{3B}Incorrect
(assert (str.in_re X (re.++ (str.to_re "tv.180solutions.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "have") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Dayspassword;0;Incorrect\u{a}"))))
; couponbar\.coupons\.com\dOwner\u{3A}\s+Host\u{3A}
(assert (str.in_re X (re.++ (str.to_re "couponbar.coupons.com") (re.range "0" "9") (str.to_re "Owner:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:\u{a}"))))
; MyBrowserSbAtsHost\u{3A}
(assert (not (str.in_re X (str.to_re "MyBrowserSbAtsHost:\u{a}"))))
(check-sat)
