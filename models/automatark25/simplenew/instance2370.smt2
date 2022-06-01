(declare-const X String)
; http://(www\.)?([^\.]+)\.com
(assert (str.in_re X (re.++ (str.to_re "http://") (re.opt (str.to_re "www.")) (re.+ (re.comp (str.to_re "."))) (str.to_re ".com\u{a}"))))
(check-sat)
