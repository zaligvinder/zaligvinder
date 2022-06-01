(declare-const X String)
; /filename=[^\n]*\u{2e}reg/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".reg/i\u{a}")))))
; (<input )(.*?)(>)
(assert (str.in_re X (re.++ (str.to_re "<input ") (re.* re.allchar) (str.to_re ">\u{a}"))))
; ^[^\"]+$
(assert (not (str.in_re X (re.++ (re.+ (re.comp (str.to_re "\u{22}"))) (str.to_re "\u{a}")))))
; on\w+Host\u{3A}ComputerKeylogger\u{2E}comHost\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "on") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "Host:ComputerKeylogger.comHost:User-Agent:\u{a}")))))
(check-sat)
