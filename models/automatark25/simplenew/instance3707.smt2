(declare-const X String)
; OVN\s+\x2APORT3\x2A\[DRIVEwww\.raxsearch\.com
(assert (not (str.in.re X (re.++ (str.to.re "OVN") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "*PORT3*[DRIVEwww.raxsearch.com\x0a")))))
(check-sat)
