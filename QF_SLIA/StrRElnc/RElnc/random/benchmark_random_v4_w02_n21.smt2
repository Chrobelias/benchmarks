(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (= a (str.++ "59" z "32" "72" x y)))

(assert (str.in_re x (re.union (re.++ (re.* (re.range "3" "9")) (str.to_re "6")) (str.to_re "4"))))
(assert (str.in_re z (re.++ (re.range "0" "8") (re.+ (re.++ (re.* (re.range "5" "7")) (re.range "0" "6"))))))
(assert (str.in_re y (re.++ (str.to_re "86") (re.* (re.* (str.to_re "286"))))))
(assert (str.in_re a (re.* (re.union (re.+ (re.* (re.range "2" "5"))) (re.range "6" "9")))))

(assert (= (+ (* (- 4) (str.len z)) (* (- 5) (str.to_int y)) (* 4 (str.to_int z))) 43))

(check-sat)