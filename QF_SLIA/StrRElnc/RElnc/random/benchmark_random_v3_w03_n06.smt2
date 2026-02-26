(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ x z) (str.++ y "63")))

(assert (str.in_re z (re.* (re.+ (re.union (re.range "2" "5") (str.to_re "361"))))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "183") (str.to_re "14")))))
(assert (str.in_re x (re.+ (re.union (re.range "0" "8") (str.to_re "90")))))

(assert (< (+ (* (- 4) (str.len x)) (* 3 (str.to_int z))) 53))
(assert (= (+ (* 5 (str.to_int x)) (* 2 (str.to_int y)) (* (- 6) (str.to_int z))) 47))

(check-sat)