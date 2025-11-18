(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.+ (re.++ (str.to_re "8") (str.to_re "96")))))
(assert (str.in_re y (re.+ (re.* (re.union (str.to_re "854") (str.to_re "927"))))))

(assert (> (+ (- (str.len x)) (* 5 (str.len y)) (* (- 9) (str.to_int x))) 59))
(assert (>= (+ (* (- 2) (str.len x)) (* 6 (str.len y))) 28))

(check-sat)