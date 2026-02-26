(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ x z "52")))

(assert (str.in_re y (re.+ (re.++ (str.to_re "601") (re.* (re.range "0" "5"))))))
(assert (str.in_re z (re.+ (re.union (str.to_re "229") (re.range "2" "6")))))
(assert (str.in_re x (re.+ (re.+ (re.union (re.range "0" "8") (str.to_re "4"))))))

(assert (<= (+ (* 8 (str.len z)) (* 4 (str.to_int y))) 65))
(assert (< (+ (* (- 6) (str.len x)) (str.len y) (* 4 (str.len z))) 42))

(check-sat)