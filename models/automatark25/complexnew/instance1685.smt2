(declare-const X String)
; www\x2Eonlinecasinoextra\x2EcomWindows
(assert (not (str.in.re X (str.to.re "www.onlinecasinoextra.comWindows\x0a"))))
; \d{10,12}@[a-zA-Z].[a-zA-Z].*
(assert (not (str.in.re X (re.++ ((_ re.loop 10 12) (re.range "0" "9")) (str.to.re "@") (re.union (re.range "a" "z") (re.range "A" "Z")) re.allchar (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* re.allchar) (str.to.re "\x0a")))))
; /\x2emcl([\x3f\x2f]|$)/Uim
(assert (not (str.in.re X (re.++ (str.to.re "/.mcl") (re.union (str.to.re "?") (str.to.re "/")) (str.to.re "/Uim\x0a")))))
; ^[a-zA-Z]([a-zA-Z[._][\d]])*[@][a-zA-Z[.][\d]]*[.][a-z[.][\d]]*
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.* (re.++ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "[") (str.to.re ".") (str.to.re "_")) (re.range "0" "9") (str.to.re "]"))) (str.to.re "@") (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "[") (str.to.re ".")) (re.range "0" "9") (re.* (str.to.re "]")) (str.to.re ".") (re.union (re.range "a" "z") (str.to.re "[") (str.to.re ".")) (re.range "0" "9") (re.* (str.to.re "]")) (str.to.re "\x0a")))))
; Referer\x3A.*notification.*qisezhin\x2fiqor\.ymspasServer\x3a
(assert (str.in.re X (re.++ (str.to.re "Referer:") (re.* re.allchar) (str.to.re "notification\x13") (re.* re.allchar) (str.to.re "qisezhin/iqor.ym\x13spasServer:\x0a"))))
(check-sat)
