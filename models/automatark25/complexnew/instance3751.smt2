(declare-const X String)
; ^[\w_.]{5,12}$
(assert (not (str.in.re X (re.++ ((_ re.loop 5 12) (re.union (str.to.re "_") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a")))))
; /z\d{1,3}/Pi
(assert (str.in.re X (re.++ (str.to.re "/z") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "/Pi\x0a"))))
; ^"[^"]+"$
(assert (not (str.in.re X (re.++ (str.to.re "\x22") (re.+ (re.comp (str.to.re "\x22"))) (str.to.re "\x22\x0a")))))
; BysooTBwhenu\x2EcomToolbarWeAgentUser-Agent\x3ahasHost\x3atoWebupdate\.cgithis
(assert (not (str.in.re X (str.to.re "BysooTBwhenu.com\x1bToolbarWeAgentUser-Agent:hasHost:toWebupdate.cgithis\x0a"))))
(check-sat)
