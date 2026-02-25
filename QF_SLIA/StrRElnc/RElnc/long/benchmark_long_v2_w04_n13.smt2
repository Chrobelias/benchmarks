(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= x (str.++ "65" y)))

(assert (str.in_re y (re.* (re.union (re.+ (str.to_re "64")) (str.to_re "246")))))
(assert (str.in_re x (re.union (re.+ (re.range "4" "9")) (re.range "7" "9"))))

(assert (>= (+ (* 3 (str.len x)) (* (- 9) (str.len y))) 76))
(assert (<= (+ (* 2 (str.len y)) (* 2 (str.to_int x))) 17))
(assert (< (+ (* (- 8) (str.len x)) (* 6 (str.len y))) 68))

(check-sat)