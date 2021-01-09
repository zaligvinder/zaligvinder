(declare-const X String)
; Host\x3a\s+Agentbody=\x2521\x2521\x2521OptixSubject\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agentbody=%21%21%21Optix\x13Subject:\x0a")))))
; areKeyloggerver=www\x2Esnap\x2Ecom
(assert (str.in.re X (str.to.re "areKeyloggerver=www.snap.com\x0a")))
; RequestedLoggedtb\x2Efreeprod\x2EcomHWAESubject\x3aadserver\.warezclient\.com
(assert (str.in.re X (str.to.re "RequestedLoggedtb.freeprod.comHWAESubject:adserver.warezclient.com\x0a")))
(check-sat)
