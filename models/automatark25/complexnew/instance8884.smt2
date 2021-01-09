(declare-const X String)
; ([\d]{4}[ |-]?){2}([\d]{11}[ |-]?)([\d]{2})
(assert (str.in.re X (re.++ ((_ re.loop 2 2) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a") ((_ re.loop 11 11) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))))))
; ^\s+|\s+$
(assert (not (str.in.re X (re.union (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))))
; CD\x2F\.ico\x2FsLogearch195\.225\.
(assert (not (str.in.re X (str.to.re "CD/.ico/sLogearch195.225.\x0a"))))
(check-sat)
