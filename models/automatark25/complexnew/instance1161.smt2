(declare-const X String)
; ^1?[1-2]$|^[1-9]$|^[1]0$
(assert (str.in_re X (re.union (re.++ (re.opt (str.to_re "1")) (re.range "1" "2")) (re.range "1" "9") (str.to_re "10\u{a}"))))
; ^-?\d+(\.\d+)?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") (re.+ (re.range "0" "9")))) (str.to_re "\u{a}")))))
; User-Agent\u{3a}.*%3f\s+Subject\u{3A}as\u{2E}starware\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "%3f") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:as.starware.com\u{a}")))))
(check-sat)
