(declare-const X String)
; ^(([0-2]*[0-9]+[0-9]+)\.([0-2]*[0-9]+[0-9]+)\.([0-2]*[0-9]+[0-9]+)\.([0-2]*[0-9]+[0-9]+))$
(assert (str.in_re X (re.++ (str.to_re "\u{a}...") (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))))
; User-Agent\u{3A}.*Host\u{3A}.*w3whowww\u{2E}sogou\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:") (re.* re.allchar) (str.to_re "w3whowww.sogou.com\u{a}"))))
; \u{3C}chat\u{3E}Host\u{3A}tid\u{3D}\u{7B}
(assert (not (str.in_re X (str.to_re "<chat>\u{1b}Host:tid={\u{a}"))))
; Last.*?(\d+.?\d*)
(assert (not (str.in_re X (re.++ (str.to_re "Last") (re.* re.allchar) (str.to_re "\u{a}") (re.+ (re.range "0" "9")) (re.opt re.allchar) (re.* (re.range "0" "9"))))))
(check-sat)
