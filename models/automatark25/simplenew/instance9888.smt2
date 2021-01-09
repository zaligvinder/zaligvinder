(declare-const X String)
; ToolbarUser-Agent\x3AFrom\x3A
(assert (not (str.in.re X (str.to.re "ToolbarUser-Agent:From:\x0a"))))
(check-sat)
