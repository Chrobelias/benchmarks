(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "73") (re.+ (str.to_re "363")))))

(assert (>= (+ (* (- 6) (str.len x)) (* 7 (str.to_int x))) 74))
(assert (>= (* 10 (str.to_int x)) 89))
(assert (>= (+ (* (- 2) (str.len x)) (* 5 (str.to_int x))) 73))

(check-sat)