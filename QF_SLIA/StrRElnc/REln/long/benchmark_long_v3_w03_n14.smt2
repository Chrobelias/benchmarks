(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len z) 1000))

(assert (str.in_re x (re.++ (re.* (re.+ (str.to_re "64"))) (re.+ (str.to_re "71")))))
(assert (str.in_re y (re.* (re.++ (re.++ (re.range "1" "7") (re.+ (str.to_re "6"))) (str.to_re "3")))))
(assert (str.in_re z (re.* (re.* (re.union (re.+ (re.range "3" "6")) (str.to_re "24"))))))

(assert (>= (+ (* (- 3) (str.to_int x)) (* (- 6) (str.to_int y)) (* 8 (str.to_int z))) 33))
(assert (> (+ (* (- 8) (str.len y)) (* 6 (str.to_int y)) (* (- 5) (str.to_int z))) 38))

(check-sat)