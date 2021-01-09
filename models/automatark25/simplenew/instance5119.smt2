(declare-const X String)
; aohobygi\x2fzwiw\s+\+The\+password\+is\x3A
(assert (str.in.re X (re.++ (str.to.re "aohobygi/zwiw") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "+The+password+is:\x0a"))))
(check-sat)
