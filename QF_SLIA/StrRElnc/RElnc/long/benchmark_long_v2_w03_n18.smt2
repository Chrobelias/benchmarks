(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (= y (str.++ "97" x)))

(assert (str.in_re y (re.union (re.union (str.to_re "75") (str.to_re "3")) (re.+ (re.range "7" "9")))))
(assert (str.in_re x (re.* (re.+ (re.union (re.range "2" "9") (re.* (re.range "3" "9")))))))

(assert (<= (* 2 (str.len x)) 19))
(assert (= (* (- 7) (str.to_int x)) 23))
(assert (> (+ (* (- 10) (str.len x)) (* (- 10) (str.len y))) 33))

(check-sat)