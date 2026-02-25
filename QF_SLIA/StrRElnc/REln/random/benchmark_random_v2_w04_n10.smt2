(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.union (re.+ (str.to_re "94")) (str.to_re "502")) (re.* (str.to_re "935")))))
(assert (str.in_re y (re.++ (re.+ (re.* (str.to_re "621"))) (re.+ (str.to_re "5")))))

(assert (<= (+ (- (str.to_int x)) (* 2 (str.to_int y))) 54))
(assert (< (+ (* 2 (str.to_int x)) (* 8 (str.to_int y))) 48))
(assert (< (+ (* 7 (str.len x)) (* (- 6) (str.len y))) 71))
(assert (> (+ (* (- 7) (str.len x)) (* 6 (str.len y))) 83))

(check-sat)