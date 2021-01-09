(declare-const X String)
; ^-?([1-8]?[0-9]\.{1}\d{1,6}$|90\.{1}0{1,6}$)
(assert (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.opt (re.range "1" "8")) (re.range "0" "9") ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (re.range "0" "9"))) (re.++ (str.to.re "90") ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (str.to.re "0")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eemf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".emf/i\x0a"))))
; to\d+User-Agent\x3AFiltered
(assert (not (str.in.re X (re.++ (str.to.re "to") (re.+ (re.range "0" "9")) (str.to.re "User-Agent:Filtered\x0a")))))
; ShadowNet\dsearchreslt\sTROJAN-Host\x3AYWRtaW46cGFzc3dvcmQ
(assert (str.in.re X (re.++ (str.to.re "ShadowNet") (re.range "0" "9") (str.to.re "searchreslt") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "TROJAN-Host:YWRtaW46cGFzc3dvcmQ\x0a"))))
; ^p(ost)?[ |\.]*o(ffice)?[ |\.]*(box)?[ 0-9]*[^[a-z ]]*
(assert (str.in.re X (re.++ (str.to.re "p") (re.opt (str.to.re "ost")) (re.* (re.union (str.to.re " ") (str.to.re "|") (str.to.re "."))) (str.to.re "o") (re.opt (str.to.re "ffice")) (re.* (re.union (str.to.re " ") (str.to.re "|") (str.to.re "."))) (re.opt (str.to.re "box")) (re.* (re.union (str.to.re " ") (re.range "0" "9"))) (re.union (str.to.re "[") (re.range "a" "z") (str.to.re " ")) (re.* (str.to.re "]")) (str.to.re "\x0a"))))
(check-sat)
