(declare-const X String)
; Pattern that matches all DVLA Vehicle Registration Marks (VRM). Allows for an optional single space between segments.
(assert (str.in.re X (re.++ (str.to.re "Pattern that matches all DVLA Vehicle Registration Marks VRM") re.allchar (str.to.re " Allows for an optional single space between segments") re.allchar (str.to.re "\x0a"))))
(check-sat)
