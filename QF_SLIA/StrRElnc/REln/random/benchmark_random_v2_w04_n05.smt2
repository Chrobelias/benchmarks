(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.+ (str.to_re "64")) (re.+ (re.* (str.to_re "13"))))))
(assert (str.in_re x (re.++ (re.union (re.+ (str.to_re "959")) (str.to_re "44")) (str.to_re "670"))))

(assert (<= (+ (* (- 3) (str.len x)) (- (str.len y))) 46))
(assert (>= (+ (- (str.len x)) (* (- 8) (str.len y))) 78))
(assert (<= (+ (* (- 3) (str.to_int x)) (* (- 3) (str.to_int y))) 32))
(assert (< (+ (* 6 (str.len x)) (* (- 9) (str.len y))) 29))

(check-sat)