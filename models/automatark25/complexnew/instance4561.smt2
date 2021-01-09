(declare-const X String)
; /\x2ecsd([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.csd") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; RequestedLoggedtb\x2Efreeprod\x2EcomHWAESubject\x3aadserver\.warezclient\.com
(assert (str.in.re X (str.to.re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\x0a")))
; ^((1[01])|(\d)):[0-5]\d(:[0-5]\d)?\s?([apAP][Mm])?$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9")) (str.to.re ":") (re.range "0" "5") (re.range "0" "9") (re.opt (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.union (str.to.re "a") (str.to.re "p") (str.to.re "A") (str.to.re "P")) (re.union (str.to.re "M") (str.to.re "m")))) (str.to.re "\x0a")))))
; (facebook|twitter|youtube)
(assert (not (str.in.re X (re.++ (re.union (str.to.re "facebook") (str.to.re "twitter") (str.to.re "youtube")) (str.to.re "\x0a")))))
; ([a-zA-Z]{2}[0-9]{1,2}\s{0,1}[0-9]{1,2}[a-zA-Z]{2})
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 2) (re.range "0" "9")) ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))))
(check-sat)
