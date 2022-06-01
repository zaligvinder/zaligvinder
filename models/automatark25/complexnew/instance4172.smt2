(declare-const X String)
; /(DisableSandboxAndDrop|ConfusedClass|FieldAccessVerifierExpl)\.class/ims
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "DisableSandboxAndDrop") (str.to_re "ConfusedClass") (str.to_re "FieldAccessVerifierExpl")) (str.to_re ".class/ims\u{a}")))))
; ^([A-Z]{2}\s?(\d{2})?(-)?([A-Z]{1}|\d{1})?([A-Z]{1}|\d{1}))$
(assert (not (str.in_re X (re.++ (str.to_re "\u{a}") ((_ re.loop 2 2) (re.range "A" "Z")) (re.opt (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (str.to_re "-")) (re.opt (re.union ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.union ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")))))))
; /poc\/(Exploit|myClassLoader|pocMain|runCmd)\.class/ims
(assert (not (str.in_re X (re.++ (str.to_re "/poc/") (re.union (str.to_re "Exploit") (str.to_re "myClassLoader") (str.to_re "pocMain") (str.to_re "runCmd")) (str.to_re ".class/ims\u{a}")))))
; www\u{2E}slinkyslate.*Redirector\u{22}.*Host\u{3A}toolbarplace\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "www.slinkyslate") (re.* re.allchar) (str.to_re "Redirector\u{22}") (re.* re.allchar) (str.to_re "Host:toolbarplace.com\u{a}"))))
; (.*\.jpe?g|.*\.JPE?G)
(assert (str.in_re X (re.++ (re.union (re.++ (re.* re.allchar) (str.to_re ".jp") (re.opt (str.to_re "e")) (str.to_re "g")) (re.++ (re.* re.allchar) (str.to_re ".JP") (re.opt (str.to_re "E")) (str.to_re "G"))) (str.to_re "\u{a}"))))
(check-sat)
