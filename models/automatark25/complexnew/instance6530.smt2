(declare-const X String)
; /filename=[^\n]*\u{2e}cpe/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".cpe/i\u{a}")))))
; /\/feed\.dll\?pub_id=\d+?\&ua=/Ui
(assert (str.in_re X (re.++ (str.to_re "//feed.dll?pub_id=") (re.+ (re.range "0" "9")) (str.to_re "&ua=/Ui\u{a}"))))
(check-sat)
