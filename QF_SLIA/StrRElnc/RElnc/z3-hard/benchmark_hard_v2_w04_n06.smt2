(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "84" y)))

(assert (str.in_re x (re.union (re.++ (re.* (str.to_re "99")) (str.to_re "56")) (re.* (re.range "1" "9")))))
(assert (str.in_re y (re.+ (re.range "1" "6"))))

(assert (= (+ (* 7 (str.len y)) (* 8 (str.to_int y))) 31))
(assert (< (+ (* (- 3) (str.len x)) (* (- 6) (str.len y))) 61))
(assert (= (+ (* 9 (str.to_int x)) (* (- 8) (str.to_int y))) 85))

(check-sat)