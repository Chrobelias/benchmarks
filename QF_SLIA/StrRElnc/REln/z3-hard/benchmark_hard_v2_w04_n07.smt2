(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.* (re.++ (str.to_re "66") (re.++ (re.range "6" "9") (re.range "3" "6"))))))
(assert (str.in_re x (re.++ (str.to_re "401") (re.+ (str.to_re "11")))))

(assert (<= (+ (* (- 8) (str.len x)) (* 2 (str.len y)) (* 7 (str.to_int x))) 32))
(assert (>= (+ (* (- 10) (str.to_int x)) (* 4 (str.to_int y))) 12))
(assert (> (+ (* 4 (str.to_int x)) (* 9 (str.to_int y))) 33))

(check-sat)