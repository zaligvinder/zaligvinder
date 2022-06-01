(declare-const X String)
; /filename=[^\n]*\u{2e}bak/i
(assert (not (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".bak/i\u{a}")))))
; AdTools\sdownloadfile\u{2e}org\w+com\u{3E}[^\n\r]*as\u{2E}starware\u{2E}comOS\u{2F}SSKCstech\u{2E}web-nexus\u{2E}net
(assert (not (str.in_re X (re.++ (str.to_re "AdTools") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "com>") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "as.starware.comOS/SSKCstech.web-nexus.net\u{a}")))))
; /\.php\?catalogp\=\d{2}$/U
(assert (str.in_re X (re.++ (str.to_re "/.php?catalogp=") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "/U\u{a}"))))
; \$[0-9]?[0-9]?[0-9]?((\,[0-9][0-9][0-9])*)?(\.[0-9][0-9])?$
(assert (not (str.in_re X (re.++ (str.to_re "$") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.opt (re.* (re.++ (str.to_re ",") (re.range "0" "9") (re.range "0" "9") (re.range "0" "9")))) (re.opt (re.++ (str.to_re ".") (re.range "0" "9") (re.range "0" "9"))) (str.to_re "\u{a}")))))
(check-sat)
