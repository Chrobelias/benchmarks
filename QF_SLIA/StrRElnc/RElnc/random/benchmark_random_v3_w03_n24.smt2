(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= z (str.++ x y "13")))

(assert (str.in_re y (re.union (str.to_re "290") (re.union (re.* (re.* (re.range "1" "6"))) (str.to_re "93")))))
(assert (str.in_re z (re.union (re.+ (str.to_re "24")) (re.* (re.range "1" "7")))))
(assert (str.in_re x (re.* (re.++ (re.range "7" "9") (str.to_re "36")))))

(assert (>= (+ (* 6 (str.to_int x)) (str.to_int y) (* 3 (str.to_int z))) 49))
(assert (<= (+ (* (- 2) (str.len x)) (* 6 (str.to_int z))) 17))

(check-sat)