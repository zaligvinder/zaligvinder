(declare-const X String)
; ^(([0-1][0-9]|2[0-3])[0-5][0-9]\-([0-1][0-9]|2[0-3])[0-5][0-9]|[C|c]losed)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.range "0" "5") (re.range "0" "9") (str.to.re "-") (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.range "0" "5") (re.range "0" "9")) (re.++ (re.union (str.to.re "C") (str.to.re "|") (str.to.re "c")) (str.to.re "losed"))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eaddin/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".addin/i\x0a"))))
; toolbar_domain_redirectlibManager\x2Edll\x5Eget
(assert (str.in.re X (str.to.re "toolbar_domain_redirectlibManager.dll^get\x0a")))
(check-sat)
