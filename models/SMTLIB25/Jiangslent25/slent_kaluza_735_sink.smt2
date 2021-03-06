(set-info :smt-lib-version 2.6)
(set-logic ALL)
(set-info :source |
Generated by: Hung-En Wang, Shih-Yu Chen, Fang Yu, and Jie-Hong R. Jiang
Generated on: 2019-02-28
Generator: modified from Kaluza benchmarks
Application: Security analysis of string manipulating web applications with string length constraints
Target solver: ABC, CVC4, Norn, S3P, Trau, Z3-str3
Publication:
Hung-En Wang, Shih-Yu Chen, Fang Yu, Jie-Hong R. Jiang:
A symbolic model checking approach to the analysis of string and length constraints. ASE 2018: 623-633
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)

(declare-fun T_68 () Bool)
(declare-fun T_70 () Bool)
(declare-fun T_71 () Bool)
(declare-fun T_SELECT_10 () Bool)
(declare-fun T_SELECT_9 () Bool)
(declare-fun I0_190 () Int)
(declare-fun I0_207 () Int)
(declare-fun I1_207 () Int)
(declare-fun I2_207 () Int)
(declare-fun PCTEMP_LHS_11 () Int)
(declare-fun PCTEMP_LHS_12 () Int)
(declare-fun T_78 () Int)
(declare-fun T0_190 () String)
(declare-fun T1_190 () String)
(declare-fun T2_190 () String)
(declare-fun T3_190 () String)
(declare-fun T4_190 () String)
(declare-fun T5_190 () String)
(declare-fun T_6e () String)
(assert (= T_6e (str.++ T0_190 T1_190)))
(assert (= T1_190 (str.++ T2_190 T3_190)))
(assert (= T2_190 (str.++ T4_190 T5_190)))
(assert (not (str.in.re T4_190 (str.to.re ";"))))
(assert (= T5_190 ";"))
(assert T_71)
(assert (= T_71 (not T_70)))
(assert (= T_70 (< PCTEMP_LHS_12 0)))
(assert (= T_SELECT_9 (not (= PCTEMP_LHS_11 (- 1)))))
(assert T_68)
(assert (= T_68 (< (- 1) PCTEMP_LHS_11)))
(assert (= PCTEMP_LHS_12 (+ I0_190 PCTEMP_LHS_11)))
(assert (= T_78 (+ PCTEMP_LHS_11 7)))
(assert (>= T_78 0))
(assert (>= PCTEMP_LHS_12 T_78))
(assert (= I0_207 (- PCTEMP_LHS_12 T_78)))
(assert (= I2_207 I1_207))
(assert (<= PCTEMP_LHS_12 I1_207))
(assert (= T_SELECT_10 (not (= PCTEMP_LHS_12 (- 1)))))
(assert (= PCTEMP_LHS_11 (str.len T0_190))) ; len 0
(assert (= I0_190 (str.len T4_190))) ; len 1
(assert T_SELECT_10)
(check-sat)
(exit)
