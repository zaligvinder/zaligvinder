(declare-const X String)
; ^(([0-1][0-9]|2[0-3])[0-5][0-9]\-([0-1][0-9]|2[0-3])[0-5][0-9]|[C|c]losed)$
(assert (str.in_re X (re.++ (re.union (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.range "0" "5") (re.range "0" "9") (str.to_re "-") (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (str.to_re "C") (str.to_re "|") (str.to_re "c")) (str.to_re "losed"))) (str.to_re "\u{a}"))))
; /filename=[^\n]*\u{2e}addin/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".addin/i\u{a}"))))
; toolbar_domain_redirectlibManager\u{2E}dll\u{5E}get
(assert (str.in_re X (str.to_re "toolbar_domain_redirectlibManager.dll^get\u{a}")))
(check-sat)
