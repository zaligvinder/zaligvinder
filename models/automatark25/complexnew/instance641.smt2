(declare-const X String)
; ToolbarUser-Agent\x3AFrom\x3A
(assert (not (str.in.re X (str.to.re "ToolbarUser-Agent:From:\x0a"))))
; /\/\*[\d\D]*?\*\//
(assert (str.in.re X (re.++ (str.to.re "//*") (re.* (re.union (re.range "0" "9") (re.comp (re.range "0" "9")))) (str.to.re "*//\x0a"))))
(check-sat)
