(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.union (re.* (re.+ (str.to_re "132"))) (re.range "0" "7")) (str.to_re "324"))))
(assert (str.in_re y (re.union (str.to_re "6") (re.+ (re.++ (str.to_re "12") (str.to_re "4"))))))

(assert (> (+ (* (- 4) (str.to_int x)) (* 9 (str.to_int y))) 85))
(assert (<= (+ (* (- 10) (str.len x)) (* (- 4) (str.len y))) 89))
(assert (< (+ (* 3 (str.len x)) (- (str.len y))) 15))

(check-sat)