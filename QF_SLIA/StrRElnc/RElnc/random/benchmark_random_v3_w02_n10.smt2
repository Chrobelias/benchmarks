(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y z) (str.++ "43" x)))

(assert (str.in_re y (re.+ (re.range "1" "7"))))
(assert (str.in_re x (re.+ (re.++ (re.* (str.to_re "74")) (str.to_re "241")))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "2")) (re.* (re.* (re.range "1" "9"))))))

(assert (= (+ (* (- 3) (str.len y)) (* (- 7) (str.to_int y))) 8))

(check-sat)