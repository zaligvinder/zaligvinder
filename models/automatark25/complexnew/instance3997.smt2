(declare-const X String)
; /(DisableSandboxAndDrop|ConfusedClass|FieldAccessVerifierExpl)\.class/ims
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "DisableSandboxAndDrop") (str.to.re "ConfusedClass") (str.to.re "FieldAccessVerifierExpl")) (str.to.re ".class/ims\x0a")))))
; \\[\\w{2}\\]
(assert (str.in.re X (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x5c") (str.to.re "w") (str.to.re "{") (str.to.re "2") (str.to.re "}")) (str.to.re "\x0a"))))
; /\x2exps([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xps") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
