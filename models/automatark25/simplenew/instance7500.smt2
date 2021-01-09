(declare-const X String)
; /User-Agent\x3a\x20[^\x0d\x0a]*?\x3bU\x3a[^\x0d\x0a]{1,68}\x3brv\x3a/H
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent: ") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re ";U:") ((_ re.loop 1 68) (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re ";rv:/H\x0a")))))
(check-sat)
