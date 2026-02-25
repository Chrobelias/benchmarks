(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re y (re.* (re.union (str.to_re "67") (str.to_re "372")))))
(assert (str.in_re x (re.++ (re.* (str.to_re "13")) (re.+ (str.to_re "7")))))
(assert (str.in_re z (re.* (re.union (str.to_re "221") (str.to_re "4")))))
(assert (str.in_re a (re.++ (str.to_re "3") (re.++ (str.to_re "37") (re.* (str.to_re "1"))))))

(assert (>= (+ (* (- 2) (str.len y)) (* 4 (str.len a)) (* 4 (str.to_int y))) 92))

(check-sat)