(declare-const X String)
; Pattern that matches all DVLA Vehicle Registration Marks (VRM). Allows for an optional single space between segments.
(assert (str.in_re X (re.++ (str.to_re "Pattern that matches all DVLA Vehicle Registration Marks VRM") re.allchar (str.to_re " Allows for an optional single space between segments") re.allchar (str.to_re "\u{a}"))))
(check-sat)
