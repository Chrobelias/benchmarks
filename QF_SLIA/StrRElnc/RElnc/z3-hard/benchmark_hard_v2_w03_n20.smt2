(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "27" x)))

(assert (str.in_re x (re.+ (re.++ (str.to_re "3") (re.+ (str.to_re "53"))))))
(assert (str.in_re y (re.* (re.range "0" "9"))))

(assert (< (+ (* 10 (str.to_int x)) (str.to_int y)) 20))
(assert (> (+ (* 8 (str.len x)) (* (- 6) (str.len y)) (* (- 5) (str.to_int y))) 38))

(check-sat)