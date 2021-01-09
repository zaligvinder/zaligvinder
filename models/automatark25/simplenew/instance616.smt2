(declare-const X String)
; User-Agent\x3a\soffers\x2Ebullseye-network\x2Ecom\d+FTPsearch\.dropspam\.com
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "offers.bullseye-network.com") (re.+ (re.range "0" "9")) (str.to.re "FTPsearch.dropspam.com\x0a"))))
(check-sat)
