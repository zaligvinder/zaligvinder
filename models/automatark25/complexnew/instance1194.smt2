(declare-const X String)
; Host\u{3A}\dKeylogger.*Onetrustyfiles\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "Host:") (re.range "0" "9") (str.to_re "Keylogger") (re.* re.allchar) (str.to_re "Onetrustyfiles.com\u{a}"))))
; /i=[a-zA-Z0-9$~]{40}/U
(assert (str.in_re X (re.++ (str.to_re "/i=") ((_ re.loop 40 40) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "$") (str.to_re "~"))) (str.to_re "/U\u{a}"))))
; /filename=[^\n]*\u{2e}mpeg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".mpeg/i\u{a}"))))
; /^\u{2F}\d{10}$/U
(assert (str.in_re X (re.++ (str.to_re "//") ((_ re.loop 10 10) (re.range "0" "9")) (str.to_re "/U\u{a}"))))
(check-sat)
