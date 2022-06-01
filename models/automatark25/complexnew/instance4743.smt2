(declare-const X String)
; Kontiki\s+resultsmaster\u{2E}com\u{7c}roogoo\u{7c}
(assert (not (str.in_re X (re.++ (str.to_re "Kontiki") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "resultsmaster.com\u{13}|roogoo|\u{a}")))))
; ^((\d{0,1}[0-9](\.\d{0,1}[0-9])?)|(100))$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.opt (re.range "0" "9")) (re.range "0" "9") (re.opt (re.++ (str.to_re ".") (re.opt (re.range "0" "9")) (re.range "0" "9")))) (str.to_re "100")) (str.to_re "\u{a}")))))
; ZC-BridgeHost\u{3A}Subject\u{3a}as\u{2E}starware\u{2E}com
(assert (not (str.in_re X (str.to_re "ZC-BridgeHost:Subject:as.starware.com\u{a}"))))
; /\u{25}3D$/Im
(assert (str.in_re X (str.to_re "/%3D/Im\u{a}")))
; User-Agent\u{3A}.*Host\u{3a}\s+www\u{2E}wordiq\u{2E}com\s+Subject\u{3A}AlexaOnline\u{25}21\u{25}21\u{25}21
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.* re.allchar) (str.to_re "Host:") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "www.wordiq.com\u{1b}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Subject:AlexaOnline%21%21%21\u{a}")))))
(check-sat)
