(declare-const X String)
; Spaccio Moncler,Piumini Moncler,Moncler Piumino,Moncler Giubbotti,Moncler Negozio,Moncler 2011
(assert (str.in.re X (str.to.re "Spaccio Moncler,Piumini Moncler,Moncler Piumino,Moncler Giubbotti,Moncler Negozio,Moncler 2011\x0a")))
; /filename=[^\n]*\x2eopus/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".opus/i\x0a"))))
; \\$\\d+[.]?\\d*
(assert (str.in.re X (re.++ (str.to.re "\x5c\x5c") (re.+ (str.to.re "d")) (re.opt (str.to.re ".")) (str.to.re "\x5c") (re.* (str.to.re "d")) (str.to.re "\x0a"))))
(check-sat)
