(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (str.to_re "3"))))
(assert (str.in_re y (re.+ (str.to_re "79"))))
(assert (str.in_re z (re.* (str.to_re "50"))))
(assert (str.in_re a (re.* (str.to_re "71"))))

(assert (>= (+ (* 2 (str.len x)) (- (str.len y)) (str.to_int y)) 58))
(assert (> (+ (* (- 7) (str.len x)) (* 9 (str.len y)) (* (- 9) (str.len z)) (* (- 10) (str.to_int y))) 13))

(check-sat)