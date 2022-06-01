(declare-const X String)
; Spaccio Moncler,Piumini Moncler,Moncler Piumino,Moncler Giubbotti,Moncler Negozio,Moncler 2011
(assert (str.in_re X (str.to_re "Spaccio Moncler,Piumini Moncler,Moncler Piumino,Moncler Giubbotti,Moncler Negozio,Moncler 2011\u{a}")))
; /filename=[^\n]*\u{2e}opus/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".opus/i\u{a}"))))
; \\$\\d+[.]?\\d*
(assert (str.in_re X (re.++ (str.to_re "\u{5c}\u{5c}") (re.+ (str.to_re "d")) (re.opt (str.to_re ".")) (str.to_re "\u{5c}") (re.* (str.to_re "d")) (str.to_re "\u{a}"))))
(check-sat)
