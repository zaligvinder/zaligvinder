(declare-const X String)
; ^(http(s)?\:\/\/\S+)\s
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0ahttp") (re.opt (str.to.re "s")) (str.to.re "://") (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))))
; ^[0-9]{4}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
