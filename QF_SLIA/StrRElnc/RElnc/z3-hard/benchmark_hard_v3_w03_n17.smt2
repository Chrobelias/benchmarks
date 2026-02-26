(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= (str.++ y x) (str.++ "32" z)))

(assert (str.in_re x (re.++ (re.union (re.range "5" "9") (re.union (re.* (re.range "5" "8")) (str.to_re "27"))) (str.to_re "3"))))
(assert (str.in_re z (re.union (str.to_re "716") (re.+ (re.union (re.range "3" "6") (re.range "4" "8"))))))
(assert (str.in_re y (re.union (re.union (re.* (str.to_re "44")) (re.+ (str.to_re "32"))) (str.to_re "900"))))

(assert (> (+ (* 6 (str.to_int x)) (* (- 3) (str.to_int y)) (* (- 9) (str.to_int z))) 13))
(assert (= (+ (* (- 6) (str.to_int x)) (* 7 (str.to_int y)) (* (- 7) (str.to_int z))) 70))
(assert (<= (+ (* (- 7) (str.len x)) (* 3 (str.len y)) (* 9 (str.len z))) 46))

(check-sat)