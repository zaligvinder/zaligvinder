(declare-const X String)
; /filename=[^\n]*\u{2e}max/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".max/i\u{a}")))))
; GmbH\d+Host\u{3A}\w+adblock\u{2E}linkz\u{2E}comUser-Agent\u{3A}email
(assert (not (str.in_re X (re.++ (str.to_re "GmbH") (re.+ (re.range "0" "9")) (str.to_re "Host:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "adblock.linkz.comUser-Agent:email\u{a}")))))
; ^\d+$
(assert (str.in_re X (re.++ (re.+ (re.range "0" "9")) (str.to_re "\u{a}"))))
; /[^\u{20}-\u{7e}\r\n]{3}/P
(assert (not (str.in_re X (re.++ (str.to_re "/") ((_ re.loop 3 3) (re.union (re.range " " "~") (str.to_re "\u{d}") (str.to_re "\u{a}"))) (str.to_re "/P\u{a}")))))
(check-sat)
