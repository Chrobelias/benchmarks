(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.union (re.union (re.* (re.range "2" "9")) (str.to_re "56")) (str.to_re "89"))))
(assert (str.in_re y (re.union (re.+ (re.range "7" "9")) (re.+ (re.* (re.range "3" "9"))))))
(assert (str.in_re z (re.union (re.* (re.+ (str.to_re "454"))) (re.+ (str.to_re "142")))))

(assert (< (+ (* 2 (str.len x)) (* (- 7) (str.len y)) (* 6 (str.len z)) (* (- 9) (str.to_int z))) 83))
(assert (< (+ (* (- 8) (str.len x)) (* (- 4) (str.len y)) (* (- 3) (str.len z))) 76))

(check-sat)