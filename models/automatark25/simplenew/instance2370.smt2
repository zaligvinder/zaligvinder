(declare-const X String)
; http://(www\.)?([^\.]+)\.com
(assert (str.in.re X (re.++ (str.to.re "http://") (re.opt (str.to.re "www.")) (re.+ (re.comp (str.to.re "."))) (str.to.re ".com\x0a"))))
(check-sat)
