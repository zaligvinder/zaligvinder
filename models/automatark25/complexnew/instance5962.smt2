(declare-const X String)
; /META-INF.*?[a-zA-Z]{7}\.class/smi
(assert (str.in.re X (re.++ (str.to.re "/META-INF") (re.* re.allchar) ((_ re.loop 7 7) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".class/smi\x0a"))))
; Host\x3AfromZC-Bridgev\x2Exml\x2FNFO\x2CRegistered
(assert (str.in.re X (str.to.re "Host:fromZC-Bridgev.xml/NFO,Registered\x0a")))
; /filename=[^\n]*\x2eflv/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".flv/i\x0a")))))
(check-sat)
