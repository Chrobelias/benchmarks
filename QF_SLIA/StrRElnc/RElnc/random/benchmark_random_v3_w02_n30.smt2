(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (= y (str.++ "42" z "23" x)))

(assert (str.in_re y (re.+ (re.union (str.to_re "29") (re.* (re.range "2" "8"))))))
(assert (str.in_re z (re.++ (re.union (re.range "1" "8") (re.+ (str.to_re "20"))) (re.+ (str.to_re "4")))))
(assert (str.in_re x (re.union (str.to_re "88") (re.+ (str.to_re "18")))))

(assert (>= (+ (* 8 (str.len x)) (* 10 (str.len y)) (* (- 6) (str.len z))) 96))
(assert (= (+ (* (- 7) (str.to_int x)) (* (- 6) (str.to_int y)) (* 3 (str.to_int z))) 26))

(check-sat)