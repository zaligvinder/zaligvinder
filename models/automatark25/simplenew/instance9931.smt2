(declare-const X String)
; /\/MacApp\/\d{2}(-\d{2}){3}(:\d{2}){2}\.png\r\n[^\u{89}]+?\u{89}PNG/Psmi
(assert (not (str.in_re X (re.++ (str.to_re "//MacApp/") ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 3 3) (re.++ (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 2 2) (re.++ (str.to_re ":") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to_re ".png\u{d}\u{a}") (re.+ (re.comp (str.to_re "\u{89}"))) (str.to_re "\u{89}PNG/Psmi\u{a}")))))
(check-sat)
