(declare-const X String)
; ^[1-9]{1}[0-9]{0,2}([\.\,]?[0-9]{3})*$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a"))))
; seqepagqfphv\x2fsfdX-Mailer\x3A
(assert (str.in.re X (str.to.re "seqepagqfphv/sfdX-Mailer:\x13\x0a")))
; WindowsAcmeReferer\x3A
(assert (not (str.in.re X (str.to.re "WindowsAcmeReferer:\x0a"))))
; /\x2etorrent([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.torrent") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
(check-sat)
