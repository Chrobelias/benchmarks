(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (= y (str.++ x "19" z)))

(assert (str.in_re y (re.+ (re.++ (re.range "4" "9") (re.* (re.range "0" "5"))))))
(assert (str.in_re x (re.* (re.union (str.to_re "91") (str.to_re "8")))))
(assert (str.in_re z (re.+ (str.to_re "841"))))

(assert (= (+ (* (- 2) (str.to_int x)) (* (- 4) (str.to_int y)) (* 8 (str.to_int z))) 65))
(assert (= (+ (* (- 9) (str.len x)) (str.len y) (* (- 3) (str.len z))) 70))

(check-sat)