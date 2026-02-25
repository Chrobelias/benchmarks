(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (re.+ (re.range "7" "9")) (re.union (str.to_re "59") (re.range "2" "5")))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "237")) (re.* (re.+ (str.to_re "90"))))))
(assert (str.in_re x (re.++ (re.* (re.+ (str.to_re "893"))) (re.+ (str.to_re "958")))))

(assert (>= (+ (* (- 10) (str.to_int x)) (* (- 8) (str.to_int y)) (* (- 3) (str.to_int z))) 98))
(assert (<= (+ (* (- 3) (str.len y)) (str.len z) (* 9 (str.to_int x))) 46))

(check-sat)