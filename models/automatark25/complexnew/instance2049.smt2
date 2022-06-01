(declare-const X String)
; /^h=\d+&w=\d+&ua=/Psi
(assert (str.in_re X (re.++ (str.to_re "/h=") (re.+ (re.range "0" "9")) (str.to_re "&w=") (re.+ (re.range "0" "9")) (str.to_re "&ua=/Psi\u{a}"))))
; richfind\u{2E}comdcww\u{2E}dmcast\u{2E}com
(assert (str.in_re X (str.to_re "richfind.comdcww.dmcast.com\u{a}")))
; /filename=[^\n]*\u{2e}xslt/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xslt/i\u{a}"))))
(check-sat)
