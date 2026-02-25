(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (= y (str.++ "79" x)))

(assert (str.in_re y (re.union (re.range "5" "9") (re.+ (re.range "3" "9")))))
(assert (str.in_re x (re.* (re.+ (re.+ (str.to_re "58"))))))

(assert (>= (* 9 (str.len y)) 34))
(assert (<= (+ (str.to_int x) (* 6 (str.to_int y))) 92))
(assert (> (+ (* (- 10) (str.len x)) (* (- 8) (str.len y))) 66))
(assert (>= (+ (* 7 (str.to_int x)) (* 4 (str.to_int y))) 66))

(check-sat)