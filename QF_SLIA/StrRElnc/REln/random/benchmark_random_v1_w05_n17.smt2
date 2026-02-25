(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.+ (str.to_re "989")))))

(assert (>= (+ (* 3 (str.len x)) (* (- 8) (str.to_int x))) 56))
(assert (= (+ (* (- 4) (str.len x)) (* 4 (str.to_int x))) 49))
(assert (= (* 3 (str.to_int x)) 77))

(check-sat)