(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "78" x)))

(assert (str.in_re x (re.+ (re.range "4" "8"))))
(assert (str.in_re y (re.* (re.union (str.to_re "62") (re.++ (re.* (str.to_re "347")) (re.range "3" "9"))))))

(assert (< (+ (* 4 (str.to_int x)) (* 2 (str.to_int y))) 55))
(assert (< (+ (* (- 4) (str.len x)) (* (- 2) (str.len y)) (* (- 4) (str.to_int y))) 40))

(check-sat)