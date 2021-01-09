(declare-const X String)
; /^Cookie\x3a\s?SECID=[^\x3b]+?$/mD
(assert (not (str.in.re X (re.++ (str.to.re "/Cookie:") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SECID=") (re.+ (re.comp (str.to.re ";"))) (str.to.re "/mD\x0a")))))
(check-sat)
