(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (re.union (re.+ (str.to_re "969")) (str.to_re "951"))))))

(assert (= (+ (* (- 2) (str.len x)) (* 3 (str.to_int x))) 35))
(assert (<= (+ (* (- 8) (str.len x)) (* (- 3) (str.to_int x))) 32))

(check-sat)