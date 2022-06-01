(declare-const X String)
; www\u{2E}freescratchandwin\u{2E}com\d+Server.*www\u{2E}cameup\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "www.freescratchandwin.com") (re.+ (re.range "0" "9")) (str.to_re "Server") (re.* re.allchar) (str.to_re "www.cameup.com\u{13}\u{a}")))))
; Host\u{3A}Subject\u{3A}From\u{3a}\u{d0}\u{c5}\u{cf}\u{a2}
(assert (not (str.in_re X (str.to_re "Host:Subject:From:\u{d0}\u{c5}\u{cf}\u{a2}\u{a}"))))
; /filename=[^\n]*\u{2e}pls/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".pls/i\u{a}"))))
(check-sat)
