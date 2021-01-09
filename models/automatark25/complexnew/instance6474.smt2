(declare-const X String)
; (facebook|twitter|youtube)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "facebook") (str.to.re "twitter") (str.to.re "youtube")) (str.to.re "\x0a")))))
; \x1f\x8b\x08\x00.+\x00\x00
(assert (not (str.in.re X (re.++ (str.to.re "\x1f\x8b\x08\x00") (re.+ re.allchar) (str.to.re "\x00\x00\x0a")))))
; /onload\s*\x3D\s*[\x22\x27]?location\.reload\s*\x28/smi
(assert (not (str.in.re X (re.++ (str.to.re "/onload") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "location.reload") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(/smi\x0a")))))
(check-sat)
