(declare-const X String)
; <!\[CDATA\[([^\]]*)\]\]>
(assert (str.in.re X (re.++ (str.to.re "<![CDATA[") (re.* (re.comp (str.to.re "]"))) (str.to.re "]]>\x0a"))))
(check-sat)
