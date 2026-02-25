(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= y (str.++ x "77")))

(assert (str.in_re x (re.union (str.to_re "897") (re.* (str.to_re "6")))))
(assert (str.in_re y (re.union (re.union (re.range "7" "9") (str.to_re "4")) (re.* (re.range "4" "8")))))

(assert (>= (+ (- (str.len x)) (* 9 (str.len y)) (* 7 (str.to_int x))) 43))
(assert (>= (+ (* (- 8) (str.len x)) (* 9 (str.len y))) 32))

(check-sat)