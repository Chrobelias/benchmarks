(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.++ (str.to_re "525") (re.* (re.range "4" "9")))))
(assert (str.in_re y (re.+ (re.++ (re.union (str.to_re "64") (re.* (str.to_re "0"))) (str.to_re "305")))))
(assert (str.in_re x (re.+ (re.++ (str.to_re "38") (re.* (re.* (re.range "3" "7")))))))

(assert (> (+ (* (- 7) (str.to_int x)) (* (- 6) (str.to_int y))) 91))
(assert (>= (+ (* (- 5) (str.len x)) (* (- 5) (str.len y)) (* (- 2) (str.to_int y))) 22))

(check-sat)