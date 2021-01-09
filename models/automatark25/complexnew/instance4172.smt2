(declare-const X String)
; /(DisableSandboxAndDrop|ConfusedClass|FieldAccessVerifierExpl)\.class/ims
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "DisableSandboxAndDrop") (str.to.re "ConfusedClass") (str.to.re "FieldAccessVerifierExpl")) (str.to.re ".class/ims\x0a")))))
; ^([A-Z]{2}\s?(\d{2})?(-)?([A-Z]{1}|\d{1})?([A-Z]{1}|\d{1}))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.range "A" "Z")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt ((_ re.loop 2 2) (re.range "0" "9"))) (re.opt (str.to.re "-")) (re.opt (re.union ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.union ((_ re.loop 1 1) (re.range "A" "Z")) ((_ re.loop 1 1) (re.range "0" "9")))))))
; /poc\/(Exploit|myClassLoader|pocMain|runCmd)\.class/ims
(assert (not (str.in.re X (re.++ (str.to.re "/poc/") (re.union (str.to.re "Exploit") (str.to.re "myClassLoader") (str.to.re "pocMain") (str.to.re "runCmd")) (str.to.re ".class/ims\x0a")))))
; www\x2Eslinkyslate.*Redirector\x22.*Host\x3Atoolbarplace\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "www.slinkyslate") (re.* re.allchar) (str.to.re "Redirector\x22") (re.* re.allchar) (str.to.re "Host:toolbarplace.com\x0a"))))
; (.*\.jpe?g|.*\.JPE?G)
(assert (str.in.re X (re.++ (re.union (re.++ (re.* re.allchar) (str.to.re ".jp") (re.opt (str.to.re "e")) (str.to.re "g")) (re.++ (re.* re.allchar) (str.to.re ".JP") (re.opt (str.to.re "E")) (str.to.re "G"))) (str.to.re "\x0a"))))
(check-sat)
