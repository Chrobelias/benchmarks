(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.+ (re.union (re.+ (str.to_re "81")) (str.to_re "82"))) (str.to_re "38"))))

(assert (< (+ (* 9 (str.len x)) (* (- 4) (str.to_int x))) 77))
(assert (< (* 5 (str.to_int x)) 12))

(check-sat)