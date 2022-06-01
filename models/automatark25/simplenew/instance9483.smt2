(declare-const X String)
; <!\[CDATA\[([^\]]*)\]\]>
(assert (not (str.in_re X (re.++ (str.to_re "<![CDATA[") (re.* (re.comp (str.to_re "]"))) (str.to_re "]]>\u{a}")))))
(check-sat)
