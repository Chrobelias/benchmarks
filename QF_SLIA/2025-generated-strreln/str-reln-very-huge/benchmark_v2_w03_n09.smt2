(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.+ (re.++ (re.+ (re.* (str.to_re "869"))) (str.to_re "734")))))
(assert (str.in_re y (re.+ (str.to_re "84"))))

(assert (>= (+ (str.len x) (* (- 4) (str.to_int y))) 92))
(assert (> (+ (* (- 5) (str.len x)) (* 9 (str.len y))) 5))

(check-sat)