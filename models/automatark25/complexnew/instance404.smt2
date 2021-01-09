(declare-const X String)
; /filename=[^\n]*\x2ejpf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpf/i\x0a")))))
; clvompycem\x2fcen\.vcnHost\x3AUser-Agent\x3A\x0d\x0a
(assert (not (str.in.re X (str.to.re "clvompycem/cen.vcnHost:User-Agent:\x0d\x0a\x0a"))))
; ^[1-9]{1}[0-9]{3}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
