(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "36")))

(assert (str.in_re y (re.union (re.* (re.union (str.to_re "461") (re.* (re.range "0" "6")))) (str.to_re "4"))))
(assert (str.in_re x (re.+ (str.to_re "5"))))

(assert (= (+ (* 9 (str.len x)) (* (- 5) (str.len y))) 17))
(assert (> (+ (- (str.to_int x)) (* (- 7) (str.to_int y))) 55))
(assert (< (+ (- (str.len x)) (* (- 2) (str.len y))) 92))

(check-sat)