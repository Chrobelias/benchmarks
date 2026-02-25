(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.++ (re.* (re.* (re.range "3" "5"))) (str.to_re "335"))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "820")) (re.union (str.to_re "76") (re.+ (re.range "3" "8"))))))
(assert (str.in_re y (re.union (re.++ (str.to_re "422") (str.to_re "84")) (re.* (str.to_re "100")))))

(assert (<= (+ (* (- 3) (str.len x)) (* (- 3) (str.len y)) (* 5 (str.len z))) 4))
(assert (< (+ (* (- 8) (str.to_int x)) (* (- 8) (str.to_int z))) 44))

(check-sat)