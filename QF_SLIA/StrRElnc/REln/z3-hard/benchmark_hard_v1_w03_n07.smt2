(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.+ (re.* (re.* (str.to_re "3"))))))

(assert (<= (* (- 4) (str.len x)) 3))
(assert (< (* (- 8) (str.to_int x)) 17))
(assert (= (* 9 (str.to_int x)) 90))

(check-sat)