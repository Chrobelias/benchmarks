(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re z (re.++ (re.+ (str.to_re "163")) (str.to_re "33"))))
(assert (str.in_re y (re.++ (re.range "2" "7") (re.+ (re.++ (re.* (str.to_re "52")) (str.to_re "560"))))))
(assert (str.in_re x (re.++ (str.to_re "909") (re.++ (re.+ (str.to_re "92")) (re.+ (str.to_re "417"))))))

(assert (= (+ (* 3 (str.to_int x)) (* (- 4) (str.to_int y)) (* (- 8) (str.to_int z))) 25))
(assert (<= (+ (* (- 2) (str.len x)) (* 4 (str.to_int y))) 8))

(check-sat)