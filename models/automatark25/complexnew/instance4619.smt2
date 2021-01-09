(declare-const X String)
; ^(\S+\.{1})(\S+\.{1})*([^\s\.]+\s*)$
(assert (str.in.re X (re.++ (re.* (re.++ (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) ((_ re.loop 1 1) (str.to.re ".")))) (str.to.re "\x0a") (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) ((_ re.loop 1 1) (str.to.re ".")) (re.+ (re.union (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
; libManager\x2Edll\x5Eget
(assert (str.in.re X (str.to.re "libManager.dll^get\x0a")))
; \x3Cchat\x3EHost\x3Atid\x3D\x7B
(assert (str.in.re X (str.to.re "<chat>\x1bHost:tid={\x0a")))
(check-sat)
