(declare-const X String)
; ^[-+]?\d+(\.\d)?\d*$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; to\s+User-Agent\x3Acid=tb\x2eCookie\x3A\x2Fimages\x2Fnocache\x2Ftr\x2Fgca\x2Fm\.gif\?
(assert (str.in.re X (re.++ (str.to.re "to") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:cid=tb.Cookie:/images/nocache/tr/gca/m.gif?\x0a"))))
(check-sat)
