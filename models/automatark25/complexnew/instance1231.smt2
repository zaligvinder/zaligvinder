(declare-const X String)
; ^(\[a-zA-Z '\]+)$
(assert (str.in.re X (re.++ (str.to.re "\x0a[a-zA-Z '") (re.+ (str.to.re "]")))))
; WebsiteUser-Agent\x3Ahttphostfast-look\x2Ecom
(assert (str.in.re X (str.to.re "WebsiteUser-Agent:httphostfast-look.com\x0a")))
; ^(FR)?\s?[A-Z0-9-[IO]]{2}[0-9]{9}$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "FR")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "[") (str.to.re "I") (str.to.re "O")) ((_ re.loop 2 2) (str.to.re "]")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
