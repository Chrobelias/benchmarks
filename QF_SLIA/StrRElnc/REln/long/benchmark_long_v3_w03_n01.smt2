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

(assert (str.in_re x (re.* (re.++ (re.range "3" "7") (re.union (re.+ (str.to_re "72")) (str.to_re "219"))))))
(assert (str.in_re y (re.+ (str.to_re "138"))))
(assert (str.in_re z (re.+ (re.++ (str.to_re "973") (re.union (str.to_re "951") (str.to_re "333"))))))

(assert (>= (+ (* (- 5) (str.to_int x)) (* (- 5) (str.to_int y)) (* 7 (str.to_int z))) 42))
(assert (> (+ (* (- 6) (str.len y)) (* (- 9) (str.to_int z))) 86))

(check-sat)