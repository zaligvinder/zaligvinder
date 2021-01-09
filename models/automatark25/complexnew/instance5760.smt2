(declare-const X String)
; aohobygi\x2fzwiw\s+\+The\+password\+is\x3A
(assert (not (str.in.re X (re.++ (str.to.re "aohobygi/zwiw") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "+The+password+is:\x0a")))))
; /\/setup.cgi.*?TimeToLive=[^&]*?(%60|\x60)/iU
(assert (not (str.in.re X (re.++ (str.to.re "//setup") re.allchar (str.to.re "cgi") (re.* re.allchar) (str.to.re "TimeToLive=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "%60") (str.to.re "`")) (str.to.re "/iU\x0a")))))
(check-sat)
