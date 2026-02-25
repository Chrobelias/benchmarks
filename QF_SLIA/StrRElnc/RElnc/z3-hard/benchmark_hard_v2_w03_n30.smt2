(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "78" x)))

(assert (str.in_re y (re.* (re.union (str.to_re "786") (re.union (str.to_re "70") (str.to_re "441"))))))
(assert (str.in_re x (re.union (re.+ (str.to_re "668")) (re.+ (re.range "1" "6")))))

(assert (< (+ (* (- 4) (str.len x)) (- (str.len y))) 44))
(assert (> (+ (* 9 (str.len x)) (* 3 (str.len y))) 85))
(assert (= (+ (* (- 8) (str.to_int x)) (* 6 (str.to_int y))) 40))

(check-sat)