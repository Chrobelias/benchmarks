(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re y (re.++ (re.+ (str.to_re "24")) (re.++ (str.to_re "542") (str.to_re "6")))))
(assert (str.in_re x (re.* (re.++ (re.range "5" "8") (re.* (str.to_re "144"))))))
(assert (str.in_re z (re.+ (str.to_re "451"))))

(assert (>= (+ (* (- 3) (str.to_int x)) (* 5 (str.to_int y)) (* (- 4) (str.to_int z))) 95))
(assert (>= (+ (* 5 (str.len x)) (str.len y) (* 7 (str.len z)) (str.to_int x) (* 2 (str.to_int z))) 48))

(check-sat)