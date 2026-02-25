(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "22")))

(assert (str.in_re x (re.+ (re.union (re.++ (str.to_re "0") (str.to_re "14")) (re.range "5" "9")))))
(assert (str.in_re y (re.+ (re.* (re.union (re.range "2" "5") (re.range "7" "9"))))))

(assert (> (* (- 6) (str.len x)) 6))
(assert (>= (+ (* (- 3) (str.to_int x)) (str.to_int y)) 69))
(assert (> (+ (* 7 (str.len y)) (* 9 (str.to_int y))) 49))

(check-sat)