(declare-const X String)
; /([^\u{0}-\u{FF}]\s*)/u
(assert (str.in_re X (re.++ (str.to_re "//u\u{a}") (re.range "\u{0}" "\u{ff}") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))))))
; User-Agent\u{3A}.*Host\u{3A}\dName=Your\+Host\+is\u{3A}
(assert (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:") (re.range "0" "9") (str.to_re "Name=Your+Host+is:\u{a}"))))
; security\s+ad\u{2E}mokead\u{2E}com\u{3C}\u{2F}chat\u{3E}
(assert (not (str.in_re X (re.++ (str.to_re "security") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ad.mokead.com</chat>\u{a}")))))
; /filename=[^\n]*\u{2e}wvx/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".wvx/i\u{a}")))))
(check-sat)
