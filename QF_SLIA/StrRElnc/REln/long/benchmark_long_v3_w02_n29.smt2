(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.union (re.range "6" "9") (re.++ (re.* (re.range "2" "7")) (str.to_re "13")))))
(assert (str.in_re z (re.++ (re.* (str.to_re "99")) (re.+ (re.+ (str.to_re "7"))))))
(assert (str.in_re y (re.++ (str.to_re "7") (re.* (str.to_re "555")))))

(assert (>= (+ (* 7 (str.len x)) (* (- 9) (str.len z)) (* (- 6) (str.to_int x)) (* (- 2) (str.to_int y))) 27))

(check-sat)