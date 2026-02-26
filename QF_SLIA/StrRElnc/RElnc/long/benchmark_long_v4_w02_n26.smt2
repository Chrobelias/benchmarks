(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len a) 1000))

(assert (= (str.++ x a "35") (str.++ "76" z y)))

(assert (str.in_re a (re.union (re.union (str.to_re "9") (str.to_re "42")) (re.* (re.range "6" "9")))))
(assert (str.in_re z (re.++ (str.to_re "87") (re.* (re.+ (str.to_re "2"))))))
(assert (str.in_re y (re.+ (re.union (re.* (re.range "1" "5")) (str.to_re "390")))))
(assert (str.in_re x (re.union (str.to_re "48") (re.* (re.union (re.* (str.to_re "76")) (re.range "1" "3"))))))

(assert (<= (+ (* (- 7) (str.len x)) (str.len y) (* 5 (str.len z)) (* (- 6) (str.len a))) 83))
(assert (>= (+ (* (- 6) (str.to_int x)) (* (- 5) (str.to_int y)) (* (- 4) (str.to_int z)) (* 8 (str.to_int a))) 57))

(check-sat)