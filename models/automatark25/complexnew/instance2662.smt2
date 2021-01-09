(declare-const X String)
; (\[[abiu][^\[\]]*\])([^\[\]]+)(\[/?[abiu]\])
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "\x0a[") (re.union (str.to.re "a") (str.to.re "b") (str.to.re "i") (str.to.re "u")) (re.* (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "][") (re.opt (str.to.re "/")) (re.union (str.to.re "a") (str.to.re "b") (str.to.re "i") (str.to.re "u")) (str.to.re "]"))))
; Serverulmxct\x2fmqoycWinSession\x2Fclient\x2F\x2APORT1\x2A
(assert (str.in.re X (str.to.re "Serverulmxct/mqoycWinSession/client/*PORT1*\x0a")))
; /\.php\?setup=d\&s=\d+\&r=\d+/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/.php?setup=d&s=") (re.+ (re.range "0" "9")) (str.to.re "&r=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
(check-sat)
