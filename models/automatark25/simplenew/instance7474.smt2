(declare-const X String)
; (\<(.*?)\>)(.*?)(\<\/(.*?)\>)
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a<") (re.* re.allchar) (str.to.re "></") (re.* re.allchar) (str.to.re ">")))))
(check-sat)
