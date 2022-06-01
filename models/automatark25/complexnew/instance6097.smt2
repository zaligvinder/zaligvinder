(declare-const X String)
; /IPHONE\d+.\d/sH
(assert (not (str.in_re X (re.++ (str.to_re "/IPHONE") (re.+ (re.range "0" "9")) re.allchar (re.range "0" "9") (str.to_re "/sH\u{a}")))))
; \b4[0-9]\b
(assert (not (str.in_re X (re.++ (str.to_re "4") (re.range "0" "9") (str.to_re "\u{a}")))))
; <[^>]*?>
(assert (str.in_re X (re.++ (str.to_re "<") (re.* (re.comp (str.to_re ">"))) (str.to_re ">\u{a}"))))
; /filename=[^\n]*\u{2e}dws/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".dws/i\u{a}")))))
(check-sat)
