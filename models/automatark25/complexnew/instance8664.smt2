(declare-const X String)
; ^(\{|\[|\().+(\}|\]|\)).+$
(assert (str.in.re X (re.++ (re.union (str.to.re "{") (str.to.re "[") (str.to.re "(")) (re.+ re.allchar) (re.union (str.to.re "}") (str.to.re "]") (str.to.re ")")) (re.+ re.allchar) (str.to.re "\x0a"))))
; si=\s+ProAgent\s+Subject\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "si=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ProAgent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:as.starware.com\x0a")))))
(check-sat)
