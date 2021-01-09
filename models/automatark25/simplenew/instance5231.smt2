(declare-const X String)
; (\[a url=\"[^\[\]\"]*\"\])([^\[\]]+)(\[/a\])
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "[/a]\x0a[a url=\x22") (re.* (re.union (str.to.re "[") (str.to.re "]") (str.to.re "\x22"))) (str.to.re "\x22]"))))
(check-sat)
