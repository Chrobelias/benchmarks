(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= x (str.++ "98" y z)))

(assert (str.in_re y (re.++ (re.union (str.to_re "49") (str.to_re "986")) (re.* (str.to_re "247")))))
(assert (str.in_re x (re.* (re.* (re.union (re.range "6" "9") (str.to_re "1"))))))
(assert (str.in_re z (re.union (re.* (re.union (str.to_re "612") (str.to_re "8"))) (str.to_re "76"))))

(assert (>= (+ (* 5 (str.to_int x)) (* (- 4) (str.to_int y)) (* (- 3) (str.to_int z))) 60))
(assert (= (+ (* (- 10) (str.len z)) (* 9 (str.to_int z))) 32))

(check-sat)