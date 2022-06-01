(declare-const X String)
; /^[014567d]-/R
(assert (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "0") (str.to_re "1") (str.to_re "4") (str.to_re "5") (str.to_re "6") (str.to_re "7") (str.to_re "d")) (str.to_re "-/R\u{a}"))))
; ^\d{1,3}\.\d{1,4}$
(assert (str.in_re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to_re ".") ((_ re.loop 1 4) (re.range "0" "9")) (str.to_re "\u{a}"))))
; ^A([0-9]|10)$
(assert (not (str.in_re X (re.++ (str.to_re "A") (re.union (re.range "0" "9") (str.to_re "10")) (str.to_re "\u{a}")))))
; /(\u{17}\u{0}|\u{0}\u{5C})\u{0}e\u{0}l\u{0}s\u{0}e\u{0}x\u{0}t\u{0}\.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "\u{17}\u{0}") (str.to_re "\u{0}\u{5c}")) (str.to_re "\u{0}e\u{0}l\u{0}s\u{0}e\u{0}x\u{0}t\u{0}.\u{0}d\u{0}l\u{0}l\u{0}\u{0}\u{0}/i\u{a}")))))
; AdTools\sdownloadfile\u{2e}org\w+com\u{3E}[^\n\r]*as\u{2E}starware\u{2E}comOS\u{2F}SSKCstech\u{2E}web-nexus\u{2E}net
(assert (str.in_re X (re.++ (str.to_re "AdTools") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "com>") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "as.starware.comOS/SSKCstech.web-nexus.net\u{a}"))))
(check-sat)
