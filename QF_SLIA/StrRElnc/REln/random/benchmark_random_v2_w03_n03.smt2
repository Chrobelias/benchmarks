(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.* (str.to_re "58")) (re.+ (str.to_re "748")))))
(assert (str.in_re x (re.++ (re.union (str.to_re "40") (re.range "2" "7")) (re.+ (str.to_re "104")))))

(assert (<= (+ (* 8 (str.len x)) (* 2 (str.len y))) 32))
(assert (> (+ (* 2 (str.to_int x)) (* (- 8) (str.to_int y))) 33))
(assert (> (+ (* 3 (str.to_int x)) (* 7 (str.to_int y))) 9))

(check-sat)