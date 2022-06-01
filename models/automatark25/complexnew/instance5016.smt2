(declare-const X String)
; [0-9]+|-[0-9]+
(assert (not (str.in_re X (re.union (re.+ (re.range "0" "9")) (re.++ (str.to_re "-") (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))))
; /filename=[^\n]*\u{2e}ht3/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".ht3/i\u{a}")))))
; nick_name=CIA-Test\s+User-Agent\u{3A}\s+Downloadfowclxccdxn\u{2f}uxwn\.ddywww\u{2E}easymessage\u{2E}net
(assert (not (str.in_re X (re.++ (str.to_re "nick_name=CIA-Test") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "User-Agent:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Downloadfowclxccdxn/uxwn.ddywww.easymessage.net\u{a}")))))
; /filename=[^\n]*\u{2e}class/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".class/i\u{a}"))))
; /filename=[^\n]*\u{2e}jpg/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".jpg/i\u{a}"))))
(check-sat)
