(declare-const X String)
; Toolbarkl\x2Esearch\x2Eneed2find\x2EcomtvshowticketsToolbarUser-Agent\x3A\.compress
(assert (not (str.in.re X (str.to.re "Toolbarkl.search.need2find.comtvshowticketsToolbarUser-Agent:.compress\x0a"))))
; Host\x3AHost\x3Aalertseqepagqfphv\x2fsfd
(assert (str.in.re X (str.to.re "Host:Host:alertseqepagqfphv/sfd\x0a")))
; ^\.{1}
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re ".")) (str.to.re "\x0a"))))
(check-sat)
