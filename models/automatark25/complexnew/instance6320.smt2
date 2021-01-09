(declare-const X String)
; ^[0-9][0-9,]*[0-9]$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.* (re.union (re.range "0" "9") (str.to.re ","))) (re.range "0" "9") (str.to.re "\x0a")))))
; /(^|&)destination_ip=[^&]*?(\x60|\x24\x28|%60|%24%28)/Pmi
(assert (str.in.re X (re.++ (str.to.re "/&destination_ip=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "`") (str.to.re "$(") (str.to.re "%60") (str.to.re "%24%28")) (str.to.re "/Pmi\x0a"))))
; /filename=[^\n]*\x2erp/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rp/i\x0a")))))
; ^\#?[A-Fa-f0-9]{3}([A-Fa-f0-9]{3})?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "#")) ((_ re.loop 3 3) (re.union (re.range "A" "F") (re.range "a" "f") (re.range "0" "9"))) (re.opt ((_ re.loop 3 3) (re.union (re.range "A" "F") (re.range "a" "f") (re.range "0" "9")))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2etorrent/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".torrent/i\x0a"))))
(check-sat)
