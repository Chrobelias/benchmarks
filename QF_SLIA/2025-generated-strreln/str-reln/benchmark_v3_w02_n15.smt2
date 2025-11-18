(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.* (str.to_re "80"))))
(assert (str.in_re y (re.++ (str.to_re "449") (re.+ (re.* (str.to_re "482"))))))
(assert (str.in_re z (re.* (re.union (str.to_re "73") (re.++ (str.to_re "50") (re.range "7" "9"))))))

(assert (= (+ (* 8 (str.len x)) (str.len y) (* (- 2) (str.to_int z))) 98))

(check-sat)