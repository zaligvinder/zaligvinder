(declare-const X String)
; ^[A-Z]{3}-[0-9]{4}$
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2expm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xpm/i\x0a")))))
; ^[0-9]{10}GBR[0-9]{7}[U,M,F]{1}[0-9]{9}$
(assert (not (str.in.re X (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "GBR") ((_ re.loop 7 7) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "U") (str.to.re ",") (str.to.re "M") (str.to.re "F"))) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a")))))
; \x22reaction\x2Etxt\x22User-Agent\x3AnewsSpyAgentsmrtshpr-cs-
(assert (not (str.in.re X (str.to.re "\x22reaction.txt\x22User-Agent:newsSpyAgentsmrtshpr-cs-\x13\x0a"))))
(check-sat)
