(declare-const X String)
; /\u{2e}xspf([\?\u{5c}\u{2f}]|$)/smiU
(assert (str.in_re X (re.++ (str.to_re "/.xspf") (re.union (str.to_re "?") (str.to_re "\u{5c}") (str.to_re "/")) (str.to_re "/smiU\u{a}"))))
; \u{7D}\u{7B}User\u{3A}\d+Host\u{3A}User-Agent\u{3A}adblock\u{2E}linkz\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "}{User:") (re.+ (re.range "0" "9")) (str.to_re "Host:User-Agent:adblock.linkz.com\u{a}")))))
; ^[a-zA-Z]{3}[uU]{1}[0-9]{7}$
(assert (str.in_re X (re.++ ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 1) (re.union (str.to_re "u") (str.to_re "U"))) ((_ re.loop 7 7) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^\d+(\.\d{2})?$
(assert (not (str.in_re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to_re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re "\u{a}")))))
(check-sat)
