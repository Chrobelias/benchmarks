(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "60" y) (str.++ x "87")))

(assert (str.in_re x (re.++ (re.range "3" "6") (re.* (re.range "0" "3")))))
(assert (str.in_re y (re.+ (re.range "4" "8"))))

(assert (> (+ (* (- 4) (str.len x)) (* 6 (str.len y))) 55))
(assert (< (+ (* (- 2) (str.to_int x)) (* 7 (str.to_int y))) 17))

(check-sat)