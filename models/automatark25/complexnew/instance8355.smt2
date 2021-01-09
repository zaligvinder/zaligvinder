(declare-const X String)
; Host\x3A\sclvompycem\x2fcen\.vcn
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "clvompycem/cen.vcn\x0a"))))
; pjpoptwql\x2frlnj\sPG=SPEEDBARadblock\x2Elinkz\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "pjpoptwql/rlnj") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "PG=SPEEDBARadblock.linkz.com\x0a"))))
; /skillName\x3D\x7B\x28\x23/Ui
(assert (not (str.in.re X (str.to.re "/skillName={(#/Ui\x0a"))))
; \x2Fbonzibuddy\x2Forigin\x3DsidefindApofisUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "/bonzibuddy/origin=sidefindApofisUser-Agent:\x0a"))))
(check-sat)
