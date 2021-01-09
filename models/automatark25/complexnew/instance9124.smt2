(declare-const X String)
; port\d+\.compress\s+aresflashdownloader\x2Ecomv\x2Edll\x3F\[DRIVEHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (not (str.in.re X (re.++ (str.to.re "port") (re.+ (re.range "0" "9")) (str.to.re ".compress") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "aresflashdownloader.comv.dll?[DRIVEHost:\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1\x0a")))))
; \x2Fbar_pl\x2Fshdoclc\.fcgisource%3Dultrasearch136%26campaign%3DsnapEIHBand,
(assert (not (str.in.re X (str.to.re "/bar_pl/shdoclc.fcgisource%3Dultrasearch136%26campaign%3DsnapEIHBand,\x0a"))))
(check-sat)
