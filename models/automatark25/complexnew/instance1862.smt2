(declare-const X String)
; Host\x3A\sToolbarServerserver\x7D\x7BSysuptime\x3A
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "ToolbarServerserver}{Sysuptime:\x0a"))))
; /filename=[^\n]*\x2evqf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".vqf/i\x0a")))))
(check-sat)
