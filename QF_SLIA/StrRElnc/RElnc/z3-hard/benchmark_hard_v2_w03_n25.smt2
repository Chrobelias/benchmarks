(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "55" x)))

(assert (str.in_re y (re.+ (re.union (re.range "1" "6") (str.to_re "55")))))
(assert (str.in_re x (re.++ (re.* (re.range "2" "6")) (re.* (re.+ (re.range "6" "9"))))))

(assert (> (+ (* 9 (str.len x)) (* 2 (str.len y))) 88))
(assert (<= (+ (* (- 6) (str.len x)) (* 5 (str.to_int x)) (* 7 (str.to_int y))) 16))

(check-sat)