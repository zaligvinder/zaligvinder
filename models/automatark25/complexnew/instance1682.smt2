(declare-const X String)
; ^([a-hA-H]{1}[1-8]{1})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (re.range "a" "h") (re.range "A" "H"))) ((_ re.loop 1 1) (re.range "1" "8")))))
; Referer\x3A\s+HXDownload\w+installs\x2Eseekmo\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Referer:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HXDownload") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "installs.seekmo.com\x0a"))))
; ^[A-Za-z]{2}[ ]{0,1}[0-9]{2}[ ]{0,1}[a-zA-Z]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (str.to.re " ")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a"))))
; /^h=\d+&w=\d+&ua=/Psi
(assert (not (str.in.re X (re.++ (str.to.re "/h=") (re.+ (re.range "0" "9")) (str.to.re "&w=") (re.+ (re.range "0" "9")) (str.to.re "&ua=/Psi\x0a")))))
(check-sat)
