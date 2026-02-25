(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= (str.++ x "86") (str.++ "48" y)))

(assert (str.in_re y (re.union (re.++ (str.to_re "3") (re.+ (re.range "3" "8"))) (re.range "0" "9"))))
(assert (str.in_re x (re.union (re.union (str.to_re "21") (str.to_re "50")) (re.+ (str.to_re "4")))))

(assert (< (+ (* 10 (str.len x)) (* 10 (str.len y))) 75))
(assert (= (* (- 3) (str.to_int x)) 72))

(check-sat)