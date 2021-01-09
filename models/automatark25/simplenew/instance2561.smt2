(declare-const X String)
; /mJKV[^\s\x0D\x0A]+1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U
(assert (not (str.in.re X (re.++ (str.to.re "/mJKV") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "1Q_fQ_fQ_fQ_fQ_fQ_fQ_fQ/U\x0a")))))
(check-sat)
