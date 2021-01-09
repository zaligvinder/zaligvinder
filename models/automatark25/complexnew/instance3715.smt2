(declare-const X String)
; /filename=[^\n]*\x2edxf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dxf/i\x0a")))))
; /filename=[^\n]*\x2emax/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".max/i\x0a"))))
; ^([a-zA-Z])*$
(assert (not (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "\x0a")))))
; HXDownload\s+Host\x3AArcadeHourspjpoptwql\x2frlnjFrom\x3A
(assert (str.in.re X (re.++ (str.to.re "HXDownload") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:ArcadeHourspjpoptwql/rlnjFrom:\x0a"))))
(check-sat)
