(declare-const X String)
; dll\x3F\[DRIVEHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (str.in.re X (str.to.re "dll?[DRIVEHost:\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1\x0a")))
; HXDownload\s+Host\x3AArcadeHourspjpoptwql\x2frlnjFrom\x3A
(assert (not (str.in.re X (re.++ (str.to.re "HXDownload") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:ArcadeHourspjpoptwql/rlnjFrom:\x0a")))))
(check-sat)
