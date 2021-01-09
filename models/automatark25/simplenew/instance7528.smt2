(declare-const X String)
; (\/\*(\s*|.*?)*\*\/)|(--.*)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "/*") (re.* (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar))) (str.to.re "*/")) (re.++ (str.to.re "\x0a--") (re.* re.allchar))))))
(check-sat)
