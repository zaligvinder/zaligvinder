(declare-const X String)
; ("[^"]*")|('[^\r]*)(\r\n)?
(assert (str.in.re X (re.union (re.++ (str.to.re "\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (re.opt (str.to.re "\x0d\x0a")) (str.to.re "\x0a'") (re.* (re.comp (str.to.re "\x0d")))))))
(check-sat)
