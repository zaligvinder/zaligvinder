(declare-const X String)
; /filename=[^\n]*\x2ebcl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bcl/i\x0a")))))
; snprtz\x7Cdialno\s+3Awww\x2eurlblaze\x2enetulmxct\x2fmqoyc
(assert (not (str.in.re X (re.++ (str.to.re "snprtz|dialno") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "3Awww.urlblaze.netulmxct/mqoyc\x0a")))))
; /\x2ewk4([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.wk4") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\xF6\xEC\xD9\xB3\x67\xCF\x9E\x3D\x7B(\xF6\xEC\xD9\xB3\x67\xCF\x9E\x3D\x7B){500}/m
(assert (not (str.in.re X (re.++ (str.to.re "/\xf6\xec\xd9\xb3g\xcf\x9e={") ((_ re.loop 500 500) (str.to.re "\xf6\xec\xd9\xb3g\xcf\x9e={")) (str.to.re "/m\x0a")))))
; /filename=[^\n]*\x2ewmf/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wmf/i\x0a"))))
(check-sat)
