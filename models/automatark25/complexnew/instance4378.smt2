(declare-const X String)
; /filename=[^\n]*\x2eair/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".air/i\x0a"))))
; BysooTBwhenu\x2EcomToolbarWeAgentUser-Agent\x3ahasHost\x3atoWebupdate\.cgithis
(assert (str.in.re X (str.to.re "BysooTBwhenu.com\x1bToolbarWeAgentUser-Agent:hasHost:toWebupdate.cgithis\x0a")))
; /^\x2f[a-z0-9]{51}$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 51 51) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "/Ui\x0a"))))
(check-sat)
