(declare-const X String)
; ^[-+]?\d+(\.\d{2})?$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; S\x3aUsers\x5cIterenetSend=User-Agent\x3A
(assert (not (str.in.re X (str.to.re "S:Users\x5cIterenetSend=User-Agent:\x0a"))))
(check-sat)
