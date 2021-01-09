(declare-const X String)
; /\x2eappendChild.*?\x2eid.{0,200}?(offset|client)(Height|Left|Parent|Top|Width).{0,200}?(offset|client)(Height|Left|Parent|Top|Width)/is
(assert (not (str.in.re X (re.++ (str.to.re "/.appendChild") (re.* re.allchar) (str.to.re ".id") ((_ re.loop 0 200) re.allchar) (re.union (str.to.re "offset") (str.to.re "client")) (re.union (str.to.re "Height") (str.to.re "Left") (str.to.re "Parent") (str.to.re "Top") (str.to.re "Width")) ((_ re.loop 0 200) re.allchar) (re.union (str.to.re "offset") (str.to.re "client")) (re.union (str.to.re "Height") (str.to.re "Left") (str.to.re "Parent") (str.to.re "Top") (str.to.re "Width")) (str.to.re "/is\x0a")))))
; User-Agent\x3A\s+Host\x3A[^\n\r]*Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\x13\x0a"))))
; upgrade\x2Eqsrch\x2Einfox2Fie\.aspdcww\x2Edmcast\x2Ecom
(assert (str.in.re X (str.to.re "upgrade.qsrch.infox2Fie.aspdcww.dmcast.com\x0a")))
(check-sat)
