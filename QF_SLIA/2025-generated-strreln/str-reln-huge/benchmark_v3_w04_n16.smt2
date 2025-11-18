(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 10))

(assert (str.in_re x (re.* (re.++ (str.to_re "109") (re.range "1" "5")))))
(assert (str.in_re y (re.union (re.+ (str.to_re "28")) (re.++ (str.to_re "541") (re.+ (str.to_re "568"))))))
(assert (str.in_re z (re.union (re.* (re.+ (str.to_re "330"))) (str.to_re "164"))))

(assert (> (+ (* 4 (str.to_int x)) (str.to_int y) (* (- 3) (str.to_int z))) 66))
(assert (< (+ (* (- 3) (str.len z)) (* 2 (str.to_int z))) 47))
(assert (<= (+ (* (- 8) (str.to_int x)) (* 6 (str.to_int y)) (* (- 2) (str.to_int z))) 71))

(check-sat)