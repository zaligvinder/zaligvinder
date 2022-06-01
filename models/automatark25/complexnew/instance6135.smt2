(declare-const X String)
; ^[http://www.|www.][\S]+$
(assert (not (str.in_re X (re.++ (re.union (str.to_re "h") (str.to_re "t") (str.to_re "p") (str.to_re ":") (str.to_re "/") (str.to_re "w") (str.to_re ".") (str.to_re "|")) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "\u{a}")))))
; User-Agent\u{3A}Host\u{3A}hasHost\u{3A}ComputerKeylogger\u{2E}com
(assert (not (str.in_re X (str.to_re "User-Agent:Host:hasHost:ComputerKeylogger.com\u{a}"))))
; /filename=[^\n]*\u{2e}zip/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".zip/i\u{a}")))))
(check-sat)
