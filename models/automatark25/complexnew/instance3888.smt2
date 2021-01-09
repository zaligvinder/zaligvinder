(declare-const X String)
; \d{2}.?\d{3}.?\d{3}/?\d{4}-?\d{2}
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt re.allchar) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "/")) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))
; Online\x2521\x2521\x2521\sUser-Agent\x3A\d+HXDownloadasdbiz\x2Ebiz
(assert (str.in.re X (re.++ (str.to.re "Online%21%21%21") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "HXDownloadasdbiz.biz\x0a"))))
(check-sat)
