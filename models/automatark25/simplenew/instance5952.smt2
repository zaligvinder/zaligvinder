(declare-const X String)
; Subject\u{3A}KeyloggerSAHHost\u{3A}Surveillancenotification\u{2F}download\u{2F}toolbar\u{2F}locatorstoolbar
(assert (str.in_re X (str.to_re "Subject:KeyloggerSAHHost:Surveillance\u{13}notification\u{13}/download/toolbar/locatorstoolbar\u{a}")))
(check-sat)
